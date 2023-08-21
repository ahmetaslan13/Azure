// *** Azure Storage Account Variables ***

// Name of the Azure Storage Account.
variable "storage_account_name" {
  description = "Name of the Azure Storage Account."
  type        = string
}

// Name of the Azure Resource Group where the storage account will be created.
variable "resource_group_name" {
  description = "Name of the Azure Resource Group where the storage account will be created."
  type        = string
}

// Location where the Azure Storage Account will be created.
variable "location" {
  description = "Location where the Azure Storage Account will be created."
  type        = string
}

// Performance and redundancy tier of the Azure Storage Account.
variable "account_tier" {
  description = "Performance and redundancy tier of the Azure Storage Account."
  type        = string
}

// Replication type for the Azure Storage Account.
variable "replication_type" {
  description = "Replication type for the Azure Storage Account."
  type        = string
}
