// *** Azure Windows Virtual Machine Scale Set Variables ***
variable "vm_scale_set_name" {
  description = "Name of the Azure Windows Virtual Machine Scale Set."
  type        = string
}
variable "resource_group_name" {
  description = "Name of the Azure Resource Group where the Virtual Machine Scale Set will be created."
  type        = string
}
variable "location" {
  description = "Location where the Virtual Machine Scale Set will be created."
  type        = string
}
variable "sku" {
  description = "SKU for the Virtual Machine Scale Set."
  type        = string
}
variable "instance" {
  description = "Number of instances in the Virtual Machine Scale Set."
  type        = string
}
variable "admin_username" {
  description = "Admin username for the Virtual Machine Scale Set instances."
  type        = string
}
variable "admin_password" {
  description = "Admin password for the Virtual Machine Scale Set instances."
  type        = string
}

// *** Source Image Reference Variables ***
variable "caching" {
  description = "Caching behavior for the OS disk source image. Options: 'None', 'ReadOnly', or 'ReadWrite'."
  type        = string
}
variable "storage_account_type" {
  description = "Storage account type for the OS disk source image. Options: 'Standard_LRS' or 'Premium_LRS'."
  type        = string
}

// *** Source Image Reference Variables ***
variable "publisher" {
  description = "Publisher of the source image reference."
  type        = string
}
variable "offer" {
  description = "Offer of the source image reference."
  type        = string
}
variable "sku" {
  description = "SKU of the source image reference."
  type        = string
}
variable "version" {
  description = "Version of the source image reference."
  type        = string
}

// *** Network Interface Variables ***
variable "network_interface_name" {
  description = "Name of the network interface."
  type        = string
}
variable "network_interface_primary" {
  description = "Whether the network interface is primary."
  type        = string
}

// *** Network Interface IP Configuration Variables ***
variable "nic_ip_configuration_name" {
  description = "Name of the IP configuration for the network interface."
  type        = string
}
variable "nic_ip_configuration_primary" {
  description = "Whether the IP configuration for the network interface is primary."
  type        = string
}
variable "subnet_id" {
  description = "List of subnet IDs for the network interface."
  type        = list(any)
}
