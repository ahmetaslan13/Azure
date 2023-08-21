// *** Azure Storage Account ***

// Create an Azure Storage Account with the specified properties.
resource "azurerm_storage_account" "storage_account" {
  // Name of the storage account is obtained from the specified variable.
  name                     = var.storage_account_name

  // Resource group name where the storage account will be created.
  resource_group_name      = var.resource_group_name

  // Location of the storage account is obtained from the specified variable.
  location                 = var.location

  // Specifies the performance and redundancy tier of the storage account.
  account_tier             = var.account_tier

  // Specifies the type of replication to use for the storage account.
  account_replication_type = var.account_replication_type
}
