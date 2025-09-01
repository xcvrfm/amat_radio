import file_streams/file_stream
import gleam/list
import gleam/result
import gleam/string
import uls_scraper/internal/errors
import uls_scraper/internal/row_schema
import x10/x10_result

pub type TableSchema {
  TableSchema(table_name: String, rows: List(row_schema.RowSchema))
}

pub fn empty_schema() {
  TableSchema("", rows: list.new())
}

pub fn set_name(table_schema: TableSchema, table_name) {
  TableSchema(table_name:, rows: table_schema.rows)
}

pub fn append_row(table_schema: TableSchema, row: row_schema.RowSchema) {
  TableSchema(table_schema.table_name, list.prepend(table_schema.rows, row))
}

fn gen_call_sign_index(table_schema: TableSchema) -> String {
  case
    list.find(table_schema.rows, fn(row) {
      row_schema.has_call_sign_column(row)
    })
  {
    Ok(row) -> {
      let callsign = string.replace(row.column, each: "\"", with: "")
      "CREATE INDEX IF NOT EXISTS idx_"
      <> callsign
      <> " on "
      <> table_schema.table_name
      <> " ("
      <> callsign
      <> ");\n\n"
    }
    Error(_) -> ""
  }
}

pub fn write_table_schema(
  table_schema: TableSchema,
  out_stream: file_stream.FileStream,
) -> Result(Nil, errors.ScraperError) {
  let create_table =
    "CREATE TABLE IF NOT EXISTS " <> table_schema.table_name <> "\n"
  use _ <-
    file_stream.write_chars(out_stream, create_table)
    |> x10_result.use_try_map_error(errors.IOError)
  use _ <-
    file_stream.write_chars(out_stream, "(\n")
    |> x10_result.use_try_map_error(errors.IOError)
  // write rows
  let initial: Result(Nil, errors.ScraperError) = Ok(Nil)
  use _ <-
    list.fold(list.reverse(table_schema.rows), initial, fn(res, row) {
      case res {
        Ok(_) ->
          file_stream.write_chars(out_stream, row_schema.to_string(row) <> "\n")
          |> result.map_error(errors.IOError)
        Error(e) -> Error(e)
      }
    })
    |> x10_result.use_try
  use _ <-
    file_stream.write_chars(out_stream, ");\n\n")
    |> x10_result.use_try_map_error(errors.IOError)
  use _ <-
    file_stream.write_chars(out_stream, gen_call_sign_index(table_schema))
    |> x10_result.use_try_map_error(errors.IOError)

  Ok(Nil)
}
