//// Internal helpers to parse the FCCs' MS SQL schema to postgres

import file_streams/file_stream
import file_streams/file_stream_error
import gleam/list
import gleam/result
import gleam/string

/// A record to easily caputre/format a column on the schema DDL.
type SchemaRow {
  SchemaRow(
    column: String,
    column_type: String,
    nullable: String,
    comma: String,
  )
}

/// Parse a line from the FCC schema
fn new_row(line: String) -> SchemaRow {
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
      SchemaRow(format_column(c), map_column_type(t), nullable:, comma:)
    _ -> panic as "Error parsing CleanedRow"
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
fn row_to_string(cr: SchemaRow) -> String {
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

/// Process a line read from the FCC sql schema
fn process_line(line: String) -> String {
  case line {
    "create table dbo." <> table ->
      "CREATE TABLE IF NOT EXISTS " <> format_table_name(table)
    "(" -> "("
    ")" -> ");\n"
    "go" -> ""
    "" -> ""
    row -> {
      new_row(row) |> row_to_string
    }
  }
}

/// Helper to processes the FCC sql file from the in_stream, and write the results to the out_stream.
pub fn process_sql_schema(
  in_stream: file_stream.FileStream,
  out_stream: file_stream.FileStream,
) {
  case file_stream.read_line(in_stream) {
    Ok(line) -> {
      let assert Ok(_) = case echo string.trim(line) |> process_line {
        "" -> Ok(Nil)
        str -> file_stream.write_chars(out_stream, str <> "\n")
      }
        as "Unexpected error processing lines"
      process_sql_schema(in_stream, out_stream)
    }
    Error(file_stream_error.Eof) -> Ok(Nil)
    _ -> panic as "There was an I/O processing error"
  }
}
