module "schemas" {
  source = "./modules/schema"

  for_each = local.schemas

  catalog_name = local.catalog_name
  schema_name  = each.key
  comment      = each.value.comment
}

module "raw_volume" {
  source = "./modules/volume"

  catalog_name = local.catalog_name
  schema_name  = "bronze"
  volume_name  = var.volume_name
  comment      = "Managed volume containing the five raw marketing and e-commerce CSV datasets"

  # 🛑 WAIT for the schemas module to finish building before creating the volume
  depends_on = [ module.schemas ]
}

module "permissions" {
  source = "./modules/permissions"

  catalog_name       = local.catalog_name
  schema_names       = var.schema_names
  volume_schema_name = "bronze"
  volume_name        = var.volume_name
  principal          = var.permission_principal

  # 🛑 WAIT for both schemas and volumes to be fully registered before applying permissions
  depends_on = [ 
    module.schemas,
    module.raw_volume 
  ]
}
