// *** Azure Resource Group Variables ***

// Name of the Azure resource group.
variable "resource_group_name" {
  description = "Name of the Azure resource group."
  type        = string
}

// Location where the Azure resource group will be created.
variable "location" {
  description = "Location where the Azure resource group will be created."
  type        = string
}

// Tags to associate with the Azure resource group.
variable "tags" {
  description = "Tags to associate with the Azure resource group."
  type        = map(any)
}
