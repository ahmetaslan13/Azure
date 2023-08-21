// *** Azure Resource Group Variables ***

variable "resource_group_name" {
  description = "Name of the Azure resource group."
  type        = string
}

variable "location" {
  description = "Location where the Azure resource group will be created."
  type        = string
}

variable "tags" {
  description = "Tags to associate with the Azure resource group."
  type        = map(any)
}
