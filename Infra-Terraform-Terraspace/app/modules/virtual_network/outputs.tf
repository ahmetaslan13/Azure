// *** Azure Virtual Networks Outputs ***

output "name" {
  description = "Name of the created Azure Virtual Network."
  value       = azurerm_virtual_network.virtual_network.name
}
