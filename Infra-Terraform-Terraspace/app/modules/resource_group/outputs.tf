// *** Azure Resource Group Outputs ***

output "location" {
  description = "Location of the created Azure resource group."
  value       = azurerm_resource_group.resource_group.location
}

output "name" {
  description = "Name of the created Azure resource group."
  value       = azurerm_resource_group.resource_group.name
}
