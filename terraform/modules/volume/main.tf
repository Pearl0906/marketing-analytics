resource "databricks_volume" "this" {
  catalog_name = var.catalog_name
  schema_name  = var.schema_name
  name         = var.volume_name
  volume_type  = "MANAGED"
  comment      = var.comment
}