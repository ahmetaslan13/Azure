// *** Azure Resource Group Outputs ***

// Output the location of the created Azure resource group.
output "location" {
  description = "Location of the created Azure resource group."
  value       = azurerm_resource_group.resource_group.location
}

// Output the name of the created Azure resource group.
output "name" {
  description = "Name of the created Azure resource group."
  value       = azurerm_resource_group.resource_group.name
}
