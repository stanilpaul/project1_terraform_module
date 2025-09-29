output "storage_details" {
  sensitive = true
  value     = azurerm_storage_account.storageaccount
}
output "container_details" {
  value = azurerm_storage_container.this
}
output "rg_details" {
  value = azurerm_resource_group.rg
}
