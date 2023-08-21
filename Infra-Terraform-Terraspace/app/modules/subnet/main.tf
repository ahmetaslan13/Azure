// *** Azure Subnet ***

// Create Azure Subnets within the specified Virtual Network.
resource "azurerm_subnet" "subnet" {
  // Create a subnet for each entry in the "subnets" variable.
  for_each                                       = var.subnets

  // Name of the Azure Resource Group where the subnet will be created.
  resource_group_name                            = var.resource_group_name

  // Name of the Azure Virtual Network containing the subnet.
  virtual_network_name                           = var.virtual_network_name

  // Name of the subnet is based on the current entry key.
  name                                           = each.key

  // Address prefixes for the subnet obtained from the current entry value.
  address_prefixes                               = each.value.address_prefixes

  // Enforce network policies on private link endpoint within the subnet.
  enforce_private_link_endpoint_network_policies = lookup(each.value, "enforce_private_link_endpoint_network_policies", null) == null ? false : each.value.enforce_private_link_endpoint_network_policies

  // List of service endpoints for the subnet.
  service_endpoints                              = lookup(each.value, "service_endpoints", [])
}
