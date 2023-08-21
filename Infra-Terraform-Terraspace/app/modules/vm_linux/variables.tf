// *** Azure Network Interface Variables ***

variable "ip_configuration_name" {
  description = "Name of the IP configuration for the Network Interface."
  type        = string
}

variable "resource_group_name" {
  description = "Azure Resource Group name for the Network Interface."
  type        = string
}

variable "private_ip_address_allocation" {
  description = "Private IP address allocation method for the Network Interface. Options: 'Dynamic' or 'Static'."
  type        = string
}

variable "subnet_id" {
  description = "List of subnet IDs for the Network Interface."
  type        = list(any)
}

// *** Azure Virtual Machine Linux Variables ***

variable "vm_name" {
  description = "Name of the Azure Linux Virtual Machine."
  type        = string
}

variable "location" {
  description = "Location where the Azure Linux Virtual Machine will be created."
  type        = string
}

variable "vm_size" {
  description = "Size of the Azure Linux Virtual Machine."
  type        = string
}

// *** Admin SSH Key Variables ***

variable "linux_admin_username" {
  description = "Admin username for the Azure Linux Virtual Machine."
  type        = string
}

variable "public_key" {
  description = "Path to the public SSH key file for the Azure Linux Virtual Machine."
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

variable "source_image_reference_version" {
  description = "Version of the source image reference."
  type        = string
}
