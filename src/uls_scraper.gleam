import argv
import gleam/io
import gleam/result
import tempo/date
import tempo/instant
import uls_scraper/internal/errors
import uls_scraper/internal/fetcher

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
      errors.ArgumentError(
        "Unrecognized day of week. Supports mon tue wed thu fri sat sun",
      )
      |> Error
  }
}

pub fn main() -> Nil {
  let args = argv.load().arguments

  let result = case args {
    ["uls", "fetch_schema", dir] -> fetcher.fetch_sql_schema(dir)

    ["uls", "convert_schema", from, to] ->
      fetcher.convert_sql_schema_to_postgres(from, to)

    ["uls", "fetch_daily_applications", to] ->
      fetcher.fetch_daily_application_records(today_of_week(), to)

    ["uls", "fetch_daily_applications", to, day] ->
      to_day_of_week(day)
      |> result.try(fn(d) { fetcher.fetch_daily_application_records(d, to) })

    ["uls", "fetch_daily_licenses", to] ->
      fetcher.fetch_daily_license_records(today_of_week(), to)

    ["uls", "fetch_daily_licenses", to, day] ->
      to_day_of_week(day)
      |> result.try(fn(d) { fetcher.fetch_daily_license_records(d, to) })

    ["uls", ..] -> print_uls_help()

    _ -> print_help()
  }

  case result {
    Ok(n) -> n
    Error(_) -> io.print_error("error")
  }
}
