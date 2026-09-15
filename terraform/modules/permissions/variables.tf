variable "catalog_name" {
  description = "Catalog to grant access to"
  type        = string
}

variable "schema_names" {
  description = "Schemas to grant access to"
  type        = set(string)
}

variable "volume_name" {
  description = "Volume to grant access to"
  type        = string
}

variable "principal" {
  description = "Principal receiving the permissions"
  type        = string
}

variable "volume_schema_name" {
  description = "Schema containing the managed volume"
  type        = string
}