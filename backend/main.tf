#resource group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}
#storage account to store the state file in remote
resource "azurerm_storage_account" "storageaccount" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  depends_on               = [azurerm_resource_group.rg]
}
# In this container I wil stock the state file of network
resource "azurerm_storage_container" "this" {
  for_each              = var.containers
  name                  = each.value.name
  storage_account_name  = azurerm_storage_account.storageaccount.name
  container_access_type = "private"
}

