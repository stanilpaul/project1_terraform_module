terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
  required_version = ">= 1.3.0"

  backend "azurerm" {
    resource_group_name  = "learn-remote-state-paul"
    storage_account_name = "eastuslearnstateter"
    container_name       = "vm-terraform-state"
    key                  = "terraform.tfstate"
  }
}
provider "azurerm" {
  features {
  }
}
