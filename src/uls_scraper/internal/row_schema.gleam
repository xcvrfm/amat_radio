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
  "\t"
  <> cr.column
  <> "\t"
  <> cr.column_type
  <> case cr.nullable {
    "" -> cr.comma
    any -> "\t" <> any <> cr.comma
  }
}
