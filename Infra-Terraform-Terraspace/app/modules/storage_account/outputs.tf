// *** Azure Resource Group Outputs ***

output "storage_account_id" {
  description = "ID of the created Azure Storage Account."
  value       = azurerm_storage_account.storage_account.id
}
