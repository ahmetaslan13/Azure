// *** Azure Windows Virtual Machine Scale Set ***
resource "azurerm_windows_virtual_machine_scale_set" "vm_scale_set_windows" {
  // Name of the Virtual Machine Scale Set.
  name                = var.vm_scale_set_name

  // Resource group name where the Virtual Machine Scale Set will be created.
  resource_group_name = var.resource_group_name

  // Location where the Virtual Machine Scale Set will be created.
  location            = var.location

  // SKU for the Virtual Machine Scale Set.
  sku                 = var.sku

  // Number of instances in the Virtual Machine Scale Set.
  instances           = var.instance

  // Admin username for the Virtual Machine Scale Set instances.
  admin_username      = var.admin_username

  // Admin password for the Virtual Machine Scale Set instances.
  admin_password      = var.admin_password

  // Source image reference for creating the Virtual Machine Scale Set instances.
  source_image_reference {
    // Publisher of the source image.
    publisher = var.publisher

    // Offer of the source image.
    offer     = var.offer

    // SKU of the source image.
    sku       = var.sku

    // Version of the source image.
    version   = var.version
  }

  // OS disk configuration for the Virtual Machine Scale Set instances.
  os_disk {
    // Caching behavior for the OS disk.
    caching              = var.caching

    // Storage account type for the OS disk.
    storage_account_type = var.storage_account_type
  }

  // Network interface configuration for the Virtual Machine Scale Set instances.
  network_interface {
    // Name of the network interface.
    name    = var.network_interface_name

    // Whether the network interface is primary.
    primary = var.network_interface_primary

    // IP configuration for the network interface.
    ip_configuration {
      // Name of the IP configuration.
      name    = var.ip_configuration_name

      // Whether the IP configuration is primary.
      primary = var.nic_ip_configuration_primary

      // Set subnet ID for the VM.
      subnet_id = var.subnet_id[3]
    }
  }
}
