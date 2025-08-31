/// A module to facilitate downloading and working with database files from the FCC's ULS website
import uls_scraper/uls/internal/sql_schema
import uls_scraper/uls/internal/urls
import file_streams/file_stream
import file_streams/file_stream_error
import gleam/http
import gleam/http/request
import gleam/httpc
import tempo/date
import x10/x10_result

pub type UlsError {
  IOError(e: file_stream_error.FileStreamError)
  NetworkError(e: httpc.HttpError)
  ArgumentError
}

/// Helper funtion to GET a file
fn fetch_data(url: String) -> Result(BitArray, UlsError) {
  use base_req <-
    request.to(url)
    |> x10_result.use_try_replace_error(ArgumentError)

  let req =
    base_req
    |> request.set_body(<<>>)
    |> request.set_method(http.Get)
    |> request.set_header("Accept", "text/html,application/zip")
    |> request.set_header("User-Agent", urls.user_agent)
    |> request.set_header("Accept-Encoding", "gzip, deflate, br")

  use resp <-
    httpc.configure()
    |> httpc.follow_redirects(True)
    |> httpc.dispatch_bits(req)
    |> x10_result.use_try_map_error(NetworkError)

  Ok(resp.body)
}

/// Helper funtion to write data to a file
fn write_to_file(rel_path: String, data: BitArray) {
  use out_stream <-
    file_stream.open_write(rel_path)
    |> x10_result.use_try_map_error(IOError)
  use _ <-
    file_stream.write_bytes(out_stream, data)
    |> x10_result.use_try_map_error(IOError)
  use _ <-
    file_stream.close(out_stream)
    |> x10_result.use_try_map_error(IOError)
  Ok(Nil)
}

/// Downloads the current SQL schema to a file at rel_path
pub fn fetch_sql_schema(rel_path: String) -> Result(Nil, UlsError) {
  use btz <-
    urls.sql_schema_url
    |> fetch_data
    |> x10_result.use_try
  write_to_file(rel_path, btz)
}

/// Creates a postgres DDL file, by parsing the FCCs MS SQL one
pub fn convert_sql_schema_to_postgres(
  rel_path_in: String,
  rel_path_out: String,
) -> Result(Nil, UlsError) {
  use in_stream <-
    file_stream.open_read(rel_path_in)
    |> x10_result.use_try_map_error(IOError)
  use out_stream <-
    file_stream.open_write(rel_path_out)
    |> x10_result.use_try_map_error(IOError)
  let _ = sql_schema.process_sql_schema(in_stream, out_stream)
  use _ <- file_stream.close(in_stream) |> x10_result.use_try_map_error(IOError)
  use _ <-
    file_stream.close(out_stream)
    |> x10_result.use_try_map_error(IOError)
  Ok(Nil)
}

/// Downloads the daily application records
pub fn fetch_daily_application_records(
  day_of_week: date.DayOfWeek,
  rel_path: String,
) -> Result(Nil, UlsError) {
  use btz <-
    urls.daily_application_records_url(day_of_week)
    |> fetch_data
    |> x10_result.use_try
  write_to_file(rel_path, btz)
}

/// Downlaods the daily license records
pub fn fetch_daily_license_records(
  day_of_week: date.DayOfWeek,
  rel_path: String,
) -> Result(Nil, UlsError) {
  use btz <-
    urls.daily_license_records_url(day_of_week)
    |> fetch_data
    |> x10_result.use_try
  write_to_file(rel_path, btz)
}

/// Downloads the weekly / complete application records
pub fn fetch_weekly_application_records(
  rel_path: String,
) -> Result(Nil, UlsError) {
  use btz <-
    urls.weekly_application_records_url
    |> fetch_data
    |> x10_result.use_try
  write_to_file(rel_path, btz)
}

/// Downloads the weekly / complete license records
pub fn fetch_weekly_license_records(rel_path: String) -> Result(Nil, UlsError) {
  use btz <-
    urls.weekly_license_records_url
    |> fetch_data
    |> x10_result.use_try
  write_to_file(rel_path, btz)
}
