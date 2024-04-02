resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location
  tags = {
    created_by = "${var.created_by}"
    created_for = "${var.created_for}"
    date       = timestamp()
  }
}