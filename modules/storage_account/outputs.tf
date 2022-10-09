
output "name" {

  value = azurerm_storage_account.StorageAccount.name

}

output "primary_blob_endpoint" {

  value = azurerm_storage_account.StorageAccount.primary_blob_endpoint

}
