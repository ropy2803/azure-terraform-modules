
resource "azurerm_storage_account" "StorageAccount" {

  # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account

  name                      = var.storage_account_name

  resource_group_name       = var.resource_group_name
  location                  = var.resource_group_location

  account_tier              = var.storage_account_tier
  account_kind              = var.storage_account_kind
  account_replication_type  = var.storage_account_replication_type
  access_tier               = var.storage_account_access
  enable_https_traffic_only = var.storage_account_https

  tags = {

    application       = var.tag_application
    cost_center       = var.tag_cost_center
    deployment_method = var.tag_deployment_method
    entity            = var.tag_entity
    environment       = var.tag_environment
    location          = var.tag_location
    msp               = var.tag_msp
    owner             = var.tag_owner
    role              = var.tag_role

  }

}
