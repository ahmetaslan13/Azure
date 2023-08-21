// *** Azure Virtual Network ***

// Create an Azure Virtual Network with the specified properties.
resource "azurerm_virtual_network" "virtual_network" {
  // Name of the virtual network is obtained from the specified variable.
  name                = var.virtual_network_name

  // Resource group name where the virtual network will be created.
  resource_group_name = var.resource_group_name

  // Location of the virtual network is obtained from the specified variable.
  location            = var.location

  // Define the address space of the virtual network. If multiple address spaces are provided,
  // they will be used; otherwise, a single address space is used from the variable.
  address_space       = length(var.address_spaces) == 0 ? [var.address_space] : var.address_spaces

  // DNS servers for the virtual network obtained from the specified variable.
  dns_servers         = var.dns_servers
}