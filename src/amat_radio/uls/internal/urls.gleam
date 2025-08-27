//// URLs to download FCC ULS resources.
//// See https://www.fcc.gov/uls/transactions/daily-weekly

import tempo/date

/// A link to the current sql schema of the database files: public_access_database_definitions_sql_20250417.txt
pub const sql_schema_url: String = "https://www.fcc.gov/sites/default/files/public_access_database_definitions_sql_20250417.txt"

/// A link to the weekly license records
pub const weekly_license_records_url: String = "https://data.fcc.gov/download/pub/uls/complete/l_amat.zip"

/// A link to the weekly application records
pub const weekly_application_records_url: String = "https://data.fcc.gov/download/pub/uls/complete/a_amat.zip"

/// A User-Agent string that can be used
pub const user_agent: String = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Safari/605.1.15"

fn dow_to_string(dow: date.DayOfWeek) -> String {
  case dow {
    date.Mon -> "mon"
    date.Tue -> "tue"
    date.Wed -> "wed"
    date.Thu -> "thu"
    date.Fri -> "fri"
    date.Sat -> "sat"
    date.Sun -> "sun"
  }
}

/// Generate a link to the daily application records
pub fn daily_application_records_url(dow: date.DayOfWeek) -> String {
  let day = dow_to_string(dow)
  "https://data.fcc.gov/download/pub/uls/daily/a_am_" <> day <> ".zip"
}

/// Generate a link to the daily license records
pub fn daily_license_records_url(dow: date.DayOfWeek) -> String {
  let day = dow_to_string(dow)
  "https://data.fcc.gov/download/pub/uls/daily/l_am_" <> day <> ".zip"
}
