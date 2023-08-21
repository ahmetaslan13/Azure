// *** Azure Network Interface ***

resource "azurerm_network_interface" "network_interface" {
  // Name of the Network Interface.
  name                = "lx-${var.vm_name}-nic"

  // Resource group name where the Network Interface will be created.
  resource_group_name = var.resource_group_name

  // Location where the Network Interface will be created.
  location            = var.location

  ip_configuration {
    // Name of IP configuration for Network Interface.
    name = var.ip_configuration_name

    // Set the subnet ID for the VM.
    subnet_id                     = var.subnet_id[1]

    // Allocation method for private IP address.
    private_ip_address_allocation = var.private_ip_address_allocation
  }
}

// *** Azure Virtual Machine Linux ***

resource "azurerm_linux_virtual_machine" "vm_linux" {
  // Name of the Linux Virtual Machine.
  name                  = var.vm_name

  // Resource group name where the Virtual Machine will be created.
  resource_group_name   = var.resource_group_name

  // Location where the Virtual Machine will be created.
  location              = var.location

  // Size of the Linux Virtual Machine.
  size                  = var.vm_size

  // Admin username for the Linux Virtual Machine.
  admin_username        = var.linux_admin_username

  // Network interface IDs associated with the Virtual Machine.
  network_interface_ids = [azurerm_network_interface.network_interface.id]

  admin_ssh_key {
    // Admin SSH key username for the Linux Virtual Machine.
    username   = var.linux_admin_username

    // Public SSH key file path for the Linux Virtual Machine.
    public_key = file(var.public_key)
  }

  os_disk {
    // Caching behavior for the OS disk.
    caching              = var.caching

    // Storage account type for the OS disk.
    storage_account_type = var.storage_account_type
  }

  source_image_reference {
    // Publisher of the source image reference.
    publisher = var.publisher

    // Offer of the source image reference.
    offer     = var.offer

    // SKU of the source image reference.
    sku       = var.sku

    // Version of the source image reference.
    version   = var.source_image_reference_version
  }
}
