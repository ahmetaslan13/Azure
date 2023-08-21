// *** Azure Virtual Network Variables ***

variable "virtual_network_name" {
  description = "Name of the Azure Virtual Network."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group where the virtual network will be created."
  type        = string
}

variable "location" {
  description = "Location where the Azure Virtual Network will be created."
  type        = string
}

variable "address_space" {
  description = "Address space for the Azure Virtual Network (single address space)."
  type        = string
}

variable "address_spaces" {
  description = "Address spaces for the Azure Virtual Network (multiple address spaces)."
  type        = list(string)
}

variable "dns_servers" {
  description = "DNS servers for the Azure Virtual Network."
  type        = list(string)
}
