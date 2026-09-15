output "schema_name" {
  description = "Name of the created schema"
  value       = databricks_schema.this.name
}

output "schema_id" {
  description = "ID of the created schema"
  value       = databricks_schema.this.id
}