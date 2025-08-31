//// Internal helpers to parse the FCCs' MS SQL schema to postgres

import file_streams/file_stream
import file_streams/file_stream_error
import gleam/list
import gleam/result
import gleam/string
import gleam/string_tree
import uls_scraper/internal/errors
import uls_scraper/internal/row_schema
import uls_scraper/internal/table_schema
import x10/x10_result

fn read_until(
  stream: file_stream.FileStream,
  builder: string_tree.StringTree,
  until predicate: fn(String) -> Bool,
) -> Result(String, errors.ScraperError) {
  use line <-
    file_stream.read_line(stream)
    |> x10_result.use_try_map_error(errors.IOError)
  case predicate(line) {
    True -> Ok(string_tree.to_string(builder) <> line)
    False -> read_until(stream, string_tree.append(builder, line), predicate)
  }
}

fn parse_table_schema(
  str: String,
) -> Result(table_schema.TableSchema, errors.ScraperError) {
  let lines = string.split(str, on: "\n")
  let initial: Result(table_schema.TableSchema, errors.ScraperError) =
    Ok(table_schema.empty_schema())
  list.fold(lines, initial, fn(ts, l) {
    case string.trim(l) {
      "create table dbo." <> table ->
        result.map(ts, fn(t) {
          table_schema.set_name(t, format_table_name(table))
        })
      "(" -> ts
      ")" -> ts
      "go" -> ts
      "" -> ts
      row -> {
        result.try(parse_row(row), fn(r) {
          result.map(ts, fn(t) { table_schema.append_row(t, r) })
        })
      }
    }
  })
}

/// Parse a line from the FCC schema
fn parse_row(line: String) {
  let comma = case
    line
    |> string.trim
    |> string.last
    |> result.unwrap("")
  {
    "," -> ","
    _ -> ""
  }

  let nullable = case line |> string.lowercase |> string.contains("not null") {
    True -> "NOT NULL"
    False -> ""
  }

  // Seems like there are some tabs and spaces mixed in 😭
  case
    line
    |> string.replace(each: "\t", with: " ")
    |> string.split(on: " ")
    |> list.map(fn(s) { string.trim(s) })
    |> list.filter(fn(s) { !string.is_empty(s) })
  {
    [c, t, ..] ->
      Ok(row_schema.SchemaRow(
        format_column(c),
        map_column_type(t),
        nullable:,
        comma:,
      ))
    _ -> Error(errors.RowParseError("Error parsing CleanedRow"))
  }
}

// Simplified column type mappings
fn map_column_type(col_type: String) -> String {
  case col_type {
    "char" <> _ -> "TEXT"
    "varchar" <> _ -> "TEXT"
    "datetime" -> "TIMESTAMP"
    "int" | "integer" -> "INTEGER"
    "money" -> "NUMERIC"
    "numeric" <> _ -> "NUMERIC"
    "smallint" -> "SMALLINT"
    "tinyint" -> "SMALLINT"
    _ -> panic as "Unmapped column type "
  }
}

// Some reserved keywords are used, so we need to quote the columns
// We also need the columns to be in lower case to be converted to gleam
fn format_column(col: String) -> String {
  "\"" <> string.lowercase(col) <> "\""
}

/// Rename tables to be consistant
fn format_table_name(t: String) -> String {
  t
  |> string.lowercase
  |> string.replace(each: "pubacc", with: "uls")
}

/// Helper to processes the FCC sql file from the in_stream, and write the results to the out_stream.
pub fn process_sql_schema(
  in_stream: file_stream.FileStream,
  out_stream: file_stream.FileStream,
) -> Result(Nil, errors.ScraperError) {
  case read_until(in_stream, string_tree.new(), fn(str) { str == ")\n" }) {
    Ok(lines) -> {
      case
        parse_table_schema(lines)
        |> result.try(fn(s) { table_schema.write_table_schema(s, out_stream) })
      {
        Ok(_) -> process_sql_schema(in_stream, out_stream)
        Error(e) -> Error(e)
      }
    }
    Error(errors.IOError(fse)) ->
      case fse {
        file_stream_error.Eof -> Ok(Nil)
        err -> Error(errors.HelpfulError(file_stream_error.describe(err)))
      }
    _ ->
      Error(errors.HelpfulError("Unknown error processing file input stream 😬"))
  }
}
