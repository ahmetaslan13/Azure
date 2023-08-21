// *** Network Interface ***

resource "azurerm_network_interface" "network_interface" {
  // Name of the Network Interface.
  name                = "win-${var.vm_name}-nic"

  // Resource group name where the Network Interface will be created.
  resource_group_name = var.resource_group_name

  // Location where the Network Interface will be created.
  location            = var.location

  ip_configuration {
    // Name of IP configuration for Network Interface.
    name = var.ip_configuration_name

    // Set the subnet ID for the VM.
    subnet_id                     = var.subnet_id[0]

    // Allocation method for private IP address.
    private_ip_address_allocation = var.private_ip_address_allocation
  }
}

// *** VM Windows ***

resource "azurerm_windows_virtual_machine" "vm_windows" {
  // Name of the Windows Virtual Machine.
  name                  = var.vm_name

  // Resource group name where the Virtual Machine will be created.
  resource_group_name   = var.resource_group_name

  // Location where the Virtual Machine will be created.
  location              = var.location

  // Size of the Virtual Machine.
  size                  = var.vm_size

  // Admin username for the Windows Virtual Machine.
  admin_username        = var.windows_admin_username

  // Admin password for the Windows Virtual Machine.
  admin_password        = var.admin_password

  // Network interface IDs associated with the Virtual Machine.
  network_interface_ids = [azurerm_network_interface.network_interface.id]

  // Configuration for the OS disk.
  os_disk {
    // Caching behavior for the OS disk.
    caching              = var.caching

    // Storage account type for the OS disk.
    storage_account_type = var.storage_account_type
  }

  // Source image reference for creating the Virtual Machine.
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
