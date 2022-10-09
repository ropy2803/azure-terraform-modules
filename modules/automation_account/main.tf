
resource "azurerm_automation_account" "AutomationAccount" {

    # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/automation_account
  
  name                  = var.automation_account_name
  resource_group_name   = var.resource_group_name
  location              = var.resource_group_location
  sku_name              = var.automation_account_sku

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
