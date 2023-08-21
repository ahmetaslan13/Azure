// *** Azure Storage Account Variables ***

variable "storage_account_name" {
  description = "Name of the Azure Storage Account."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group where the storage account will be created."
  type        = string
}

variable "location" {
  description = "Location where the Azure Storage Account will be created."
  type        = string
}

variable "account_tier" {
  description = "Performance and redundancy tier of the Azure Storage Account."
  type        = string
}

variable "replication_type" {
  description = "Replication type for the Azure Storage Account."
  type        = string
}
