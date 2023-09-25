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
    admin_password = data.azurerm_key_vault_secret.admin_password.value
  }

  os_profile_linux_config {
    disable_password_authentication = false
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

data "azurerm_key_vault_secret" "admin_password" {
  name         = "Admin-Password"  
  key_vault_id = "/subscriptions/bc921e9e-f9eb-42fd-a4dc-83c2cf250e13/resourceGroups/RG-weu-dev-iaas/providers/Microsoft.KeyVault/vaults/KeySecrets1"
}