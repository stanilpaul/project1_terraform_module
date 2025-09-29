data "terraform_remote_state" "lb" {
  backend = "azurerm"
  config = {
    resource_group_name  = "learn-remote-state-paul"
    storage_account_name = "eastuslearnstateter"
    container_name       = "loadbalancing-terraform-state"
    key                  = "terraform.tfstate"
  }
}
