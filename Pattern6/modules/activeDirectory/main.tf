data "azuread_client_config" "current" {}

resource "azuread_application" "ad_application" {
  display_name = var.display_name
  owners       = [data.azuread_client_config.current.object_id]
  tags = {
    created_by = "${var.created_by}"
    created_for = "${var.created_for}"
    date       = timestamp()
  }
}

resource "azuread_service_principal" "service_principal" {
  client_id                    = azuread_application.ad_application.client_id
  app_role_assignment_required = false
  owners                       = [data.azuread_client_config.current.object_id]
  tags = {
    created_by = "${var.created_by}"
    created_for = "${var.created_for}"
    date       = timestamp()
  }
}