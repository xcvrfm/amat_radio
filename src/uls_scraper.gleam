import uls_scraper/uls
import argv
import gleam/io
import gleam/result
import tempo/date
import tempo/instant

type AppError {
  UlsModuleError(e: uls.UlsError)
  InputError(msg: String)
}

fn input_error(msg: String) {
  Error(InputError(msg:))
}

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
    "mon" -> Ok(date.Mon)
    "tue" -> Ok(date.Tue)
    "wed" -> Ok(date.Wed)
    "thu" -> Ok(date.Thu)
    "fri" -> Ok(date.Fri)
    "sat" -> Ok(date.Sat)
    "sun" -> Ok(date.Sun)
    _ ->
      input_error(
        "Unrecognized day of week. Supports mon tue wed thu fri sat sun",
      )
  }
}

pub fn main() -> Nil {
  let args = argv.load().arguments

  let result = case args {
    ["uls", "fetch_schema", dir] ->
      uls.fetch_sql_schema(dir)
      |> result.map_error(UlsModuleError)

    ["uls", "convert_schema", from, to] ->
      uls.convert_sql_schema_to_postgres(from, to)
      |> result.map_error(UlsModuleError)

    ["uls", "fetch_daily_applications", to] ->
      uls.fetch_daily_application_records(today_of_week(), to)
      |> result.map_error(UlsModuleError)

    ["uls", "fetch_daily_applications", to, day] ->
      to_day_of_week(day)
      |> result.try(fn(d) {
        uls.fetch_daily_application_records(d, to)
        |> result.map_error(UlsModuleError)
      })

    ["uls", "fetch_daily_licenses", to] ->
      uls.fetch_daily_license_records(today_of_week(), to)
      |> result.map_error(UlsModuleError)

    ["uls", "fetch_daily_licenses", to, day] ->
      to_day_of_week(day)
      |> result.try(fn(d) {
        uls.fetch_daily_license_records(d, to)
        |> result.map_error(UlsModuleError)
      })

    ["uls", ..] -> print_uls_help()

    _ -> print_help()
  }

  case result {
    Ok(n) -> n
    Error(_) -> io.print_error("error")
  }
}
