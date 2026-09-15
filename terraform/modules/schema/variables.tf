variable "catalog_name" {
  description = "Name of the existing Unity Catalog catalog"
  type        = string
}

variable "schema_name" {
  description = "Name of the schema to create"
  type        = string
}

variable "comment" {
  description = "Description of the schema"
  type        = string
  default     = null
}