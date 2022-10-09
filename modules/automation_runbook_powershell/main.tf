
resource "azurerm_automation_runbook" "AutomationRunbook" {

  name                      = var.automation_runbook_name
  resource_group_name       = var.resource_group_name
  location                  = var.resource_group_location
  automation_account_name   = var.automation_account_name
  log_verbose               = "true"
  log_progress              = "true"
  description               = ""
  runbook_type              = "PowerShell"

  content = var.automation_runbook_content

}
