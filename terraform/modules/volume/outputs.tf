output "volume_name" {
  description = "Name of the created managed volume"
  value       = databricks_volume.this.name
}

output "volume_id" {
  description = "ID of the created managed volume"
  value       = databricks_volume.this.id
}

output "volume_path" {
  description = "Path of the created managed volume"
  value       = databricks_volume.this.volume_path
}