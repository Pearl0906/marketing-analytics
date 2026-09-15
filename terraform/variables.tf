variable "databricks_host" {
  description = "Databricks workspace URL"
  type        = string
}

variable "catalog_name" {
  description = "Existing Databricks catalog created using the UI"
  type        = string
  default     = "marketing"
}

variable "schema_names" {
  description = "Schemas to create inside the marketing catalog"
  type        = set(string)

  default = [
    "bronze",
    "silver",
    "gold"
  ]
}

variable "volume_name" {
  description = "Managed volume used for raw CSV files"
  type        = string
  default     = "raw_data"
}

variable "permission_principal" {
  description = "Principal that receives access to the marketing data environment"
  type        = string
  default     = "account users"
}