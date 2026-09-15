locals {
  catalog_name = var.catalog_name

  schemas = {
    bronze = {
      comment = "Raw landing layer containing source marketing and e-commerce data"
    }

    silver = {
      comment = "Cleaned and standardized marketing and e-commerce data"
    }

    gold = {
      comment = "Business-ready marketing and e-commerce analytics data"
    }
  }
}