terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.94.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.26.0"
    }
  }
#   backend "azurerm" {
#     resource_group_name  = ""
#     storage_account_name = ""
#     container_name       = "tfstate"
#     key                  = "terraform.tfstate"
#   }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true

#   subscription_id = ""
#   client_id       = ""
#   client_secret   = var.client_secret
#   tenant_id       = ""
}


