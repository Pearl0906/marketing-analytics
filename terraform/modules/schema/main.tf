resource "databricks_schema" "this" {
  catalog_name = var.catalog_name
  name         = var.schema_name
  comment      = var.comment
}