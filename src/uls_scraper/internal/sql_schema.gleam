//// Internal helpers to parse the FCCs' MS SQL schema to postgres

import file_streams/file_stream
import file_streams/file_stream_error
import gleam/list
import gleam/result
import gleam/string
import gleam/string_tree
import x10/x10_result

pub type ParseError {
  IOError(fse: file_stream_error.FileStreamError)
  RowParseError(msg: String)
  HelpfulError(msg: String)
}

type TableSchema {
  TableSchema(table_name: String, rows: List(RowSchema))
}

fn empty_table() {
  TableSchema("", rows: list.new())
}

fn set_name(table_schema: TableSchema, table_name) {
  TableSchema(table_name:, rows: table_schema.rows)
}

fn append_row(table_schema: TableSchema, row: RowSchema) {
  TableSchema(table_schema.table_name, list.prepend(table_schema.rows, row))
}

fn write_table_schema(
  table_schema: TableSchema,
  out_stream: file_stream.FileStream,
) -> Result(Nil, ParseError) {
  let create_table =
    "CREATE TABLE IF NOT EXISTS " <> table_schema.table_name <> "\n"
  use _ <-
    file_stream.write_chars(out_stream, create_table)
    |> x10_result.use_try_map_error(IOError)
  use _ <-
    file_stream.write_chars(out_stream, "(\n")
    |> x10_result.use_try_map_error(IOError)
  // write rows
  let initial: Result(Nil, ParseError) = Ok(Nil)
  use _ <-
    list.fold(list.reverse(table_schema.rows), initial, fn(res, row) {
      case res {
        Ok(_) ->
          file_stream.write_chars(out_stream, row_to_string(row) <> "\n")
          |> result.map_error(IOError)
        Error(e) -> Error(e)
      }
    })
    |> x10_result.use_try
  use _ <-
    file_stream.write_chars(out_stream, ");\n\n")
    |> x10_result.use_try_map_error(IOError)
  // todo indexes
  Ok(Nil)
}

/// A record to easily caputre/format a column on the schema DDL.
type RowSchema {
  SchemaRow(
    column: String,
    column_type: String,
    nullable: String,
    comma: String,
  )
}

fn read_until(
  stream: file_stream.FileStream,
  builder: string_tree.StringTree,
  until predicate: fn(String) -> Bool,
) -> Result(String, ParseError) {
  use line <-
    file_stream.read_line(stream)
    |> x10_result.use_try_map_error(IOError)
  case predicate(line) {
    True -> Ok(string_tree.to_string(builder) <> line)
    False -> read_until(stream, string_tree.append(builder, line), predicate)
  }
}

fn parse_table_schema(str: String) -> Result(TableSchema, ParseError) {
  let lines = string.split(str, on: "\n")
  let initial: Result(TableSchema, ParseError) = Ok(empty_table())
  list.fold(lines, initial, fn(ts, l) {
    case string.trim(l) {
      "create table dbo." <> table ->
        result.map(ts, fn(t) { set_name(t, format_table_name(table)) })
      "(" -> ts
      ")" -> ts
      "go" -> ts
      "" -> ts
      row -> {
        result.try(parse_row(row), fn(r) {
          result.map(ts, fn(t) { append_row(t, r) })
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
      Ok(SchemaRow(format_column(c), map_column_type(t), nullable:, comma:))
    _ -> Error(RowParseError("Error parsing CleanedRow"))
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

/// Convert a SchemaRow to String
fn row_to_string(cr: RowSchema) -> String {
  "\t"
  <> cr.column
  <> "\t"
  <> cr.column_type
  <> case cr.nullable {
    "" -> cr.comma
    any -> "\t" <> any <> cr.comma
  }
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
) -> Result(Nil, ParseError) {
  case read_until(in_stream, string_tree.new(), fn(str) { str == ")\n" }) {
    Ok(lines) -> {
      case
        parse_table_schema(lines)
        |> result.try(fn(s) { write_table_schema(s, out_stream) })
      {
        Ok(_) -> process_sql_schema(in_stream, out_stream)
        Error(e) -> Error(e)
      }
    }
    Error(IOError(fse)) ->
      case fse {
        file_stream_error.Eof -> Ok(Nil)
        err -> Error(HelpfulError(file_stream_error.describe(err)))
      }
    _ -> Error(HelpfulError("Unknown error processing file input stream 😬"))
  }
}
