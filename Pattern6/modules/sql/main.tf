resource "azurerm_mssql_server" "sql" {
  name                         = var.sqlservername
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = var.sqlversion
  administrator_login          = var.sqlusername
  administrator_login_password = var.sqlpassword
  tags = {
    created_by = "${var.created_by}"
    created_for = "${var.created_for}"
    date       = timestamp()
  }
}