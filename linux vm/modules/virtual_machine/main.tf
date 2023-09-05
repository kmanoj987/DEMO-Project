# modules/virtual_machine/main.tf

resource "azurerm_virtual_machine" "example" {
  name                  = var.vm_name
  location              = var.vm_location
  resource_group_name   = var.resource_group_name
  network_interface_ids = [var.nic_id]
  vm_size               = var.vm_size

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  os_profile {
    computer_name  = var.vm_name
    admin_username = var.admin_username
    admin_password = var.admin_password
  }

  os_profile_linux_config {
    disable_password_authentication = true
  }

  # Add the storage_os_disk block with the necessary configuration
  storage_os_disk {
    name              = "osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "StandardSSD_LRS"  # Choose the appropriate disk type
    disk_size_gb      = 128  # Adjust the disk size as needed
  }

  tags = var.tags
}
