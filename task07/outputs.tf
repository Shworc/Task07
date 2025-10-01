/*
output "storage_account_id" {
  value = azurerm_storage_account.sa.id
}

output "storage_primary_endpoint" {
  value = azurerm_storage_account.sa.primary_blob_endpoint
}
*/
output "endpoint_hostname" {
  value = module.cdn.endpoint_hostname
}