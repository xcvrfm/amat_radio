import amat_radio/uls
import argv
import gleam/io
import gleam/list
import gleam/result
import tempo/date
import tempo/instant

fn print_help() {
  io.println("TODO: implement help message")
  Ok(Nil)
}

fn print_uls_help() {
  print_help()
}

fn today_of_week() {
  instant.now()
  |> instant.as_local_date
  |> date.to_day_of_week
}

fn to_day_of_week(day: String) {
  case day {
    "mon" -> date.Mon
    "tue" -> date.Tue
    "wed" -> date.Wed
    "thu" -> date.Thu
    "fri" -> date.Fri
    "sat" -> date.Sat
    "sun" -> date.Sun
    _ -> today_of_week()
  }
}

pub fn main() -> Nil {
  let args = argv.load().arguments

  let _ = case args {
    ["uls", "fetch_schema", dir] -> uls.fetch_sql_schema(dir)
    ["uls", "convert_schema", from, to] ->
      uls.convert_sql_schema_to_postgres(from, to)
    ["uls", "fetch_daily_applications", to] ->
      uls.fetch_daily_application_records(today_of_week(), to)
    ["uls", "fetch_daily_applications", day, to] ->
      uls.fetch_daily_application_records(to_day_of_week(day), to)
    ["uls", "fetch_daily_licenses", to] ->
      uls.fetch_daily_license_records(today_of_week(), to)
    ["uls", "fetch_daily_licenses", day, to] ->
      uls.fetch_daily_license_records(to_day_of_week(day), to)
    ["uls", ..] -> print_uls_help()
    _ -> print_help()
  }

  Nil
}
