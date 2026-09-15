variable "catalog_name" {
  description = "Name of the existing Unity Catalog catalog"
  type        = string
}

variable "schema_name" {
  description = "Schema where the managed volume will be created"
  type        = string
}

variable "volume_name" {
  description = "Name of the managed volume"
  type        = string
}

variable "comment" {
  description = "Description of the volume"
  type        = string
  default     = null
}