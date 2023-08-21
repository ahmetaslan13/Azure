// *** Azure Subnet Outputs ***

output "virtual_network_subnets" {
  description = "All the created Azure Subnets within the Virtual Network."
  value       = azurerm_subnet.subnet
}

output "subnet_ids" {
  description = "IDs of all created Azure Subnets within the Virtual Network."
  value       = values(azurerm_subnet.subnet)[*].id
}
