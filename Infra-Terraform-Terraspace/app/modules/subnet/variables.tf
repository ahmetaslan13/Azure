// *** Azure Subnet Variables ***

variable "resource_group_name" {
  description = "Name of the Azure Resource Group where the subnets will be created."
  type        = string
}

variable "virtual_network_name" {
  description = "Name of the Azure Virtual Network containing the subnets."
  type        = string
}

variable "subnets" {
  description = "Configuration for the Azure subnets."
  type        = any
}
