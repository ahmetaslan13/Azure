// *** Azure Resource Group ***

// Create an Azure resource group with the specified properties.
resource "azurerm_resource_group" "resource_group" {
  // Name of the resource group is obtained from the specified variable.
  name     = var.resource_group_name

  // Location of the resource group is obtained from the specified variable.
  location = var.location

  // Tags for the resource group are obtained from the specified variable.
  tags     = var.tags
}
