resource "databricks_grants" "catalog" {
  catalog = var.catalog_name

  grant {
    principal  = var.principal
    privileges = ["USE CATALOG"]
  }
}

resource "databricks_grants" "schemas" {
  for_each = var.schema_names

  schema = "${var.catalog_name}.${each.value}"

  grant {
    principal  = var.principal
    privileges = ["USE SCHEMA"]
  }
}

resource "databricks_grants" "volume" {
  volume = "${var.catalog_name}.${var.volume_schema_name}.${var.volume_name}"

  grant {
    principal = var.principal

    privileges = [
      "READ VOLUME",
      "WRITE VOLUME"
    ]
  }
}