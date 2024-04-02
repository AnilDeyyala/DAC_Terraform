resource "azurerm_log_analytics_workspace" "wrokspace" {
  name                = var.laworkspacename
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  retention_in_days   = 30
  tags = {
    created_by = "${var.created_by}"
    created_for = "${var.created_for}"
    date       = timestamp()
  }
}