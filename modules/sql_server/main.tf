
resource "azurerm_sql_server" "SQLServer" {

  # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/sql_server

  name                          = var.sql_server_name

  resource_group_name           = var.resource_group_name
  location                      = var.resource_group_location
  
  version                       = var.sql_version
  administrator_login           = var.sql_admin_username
  administrator_login_password  = var.sql_admin_password

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
