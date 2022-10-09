
resource "azurerm_resource_group" "ResourceGroup" {
  
  # references: https://www.terraform.io/docs/providers/azurerm/r/resource_group.html 

  name     = var.resource_group_name
  location = var.region
  
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
