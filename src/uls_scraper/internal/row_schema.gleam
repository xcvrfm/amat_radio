/// A record to easily caputre/format a column on the schema DDL.
pub type RowSchema {
  SchemaRow(
    column: String,
    column_type: String,
    nullable: String,
    comma: String,
  )
}

/// Convert a SchemaRow to String
pub fn to_string(cr: RowSchema) -> String {
  let maybe_pkey = case cr.column {
    "\"unique_system_identifier\"" -> " PRIMARY KEY"
    _ -> ""
  }
  "\t"
  <> cr.column
  <> "\t"
  <> cr.column_type
  <> maybe_pkey
  <> case cr.nullable {
    "" -> cr.comma
    any -> "\t" <> any <> cr.comma
  }
}
