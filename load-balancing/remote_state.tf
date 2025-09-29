data "terraform_remote_state" "vm" {
  backend = "azurerm"
  config = {
    resource_group_name  = "learn-remote-state-paul"
    storage_account_name = "eastuslearnstateter"
    container_name       = "vm-terraform-state"
    key                  = "terraform.tfstate"
  }
}
data "terraform_remote_state" "network" {
  backend = "azurerm"
  config = {
    resource_group_name  = "learn-remote-state-paul"
    storage_account_name = "eastuslearnstateter"
    container_name       = "network-terraform-state"
    key                  = "terraform.tfstate"
  }
}
