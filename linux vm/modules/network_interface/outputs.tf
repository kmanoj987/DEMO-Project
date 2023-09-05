# outputs.tf

output "nic_id" {
  description = "ID of the created Network Interface Card (NIC)"
  value       = azurerm_network_interface.example.id
}

output "nic_name" {
  description = "Name of the created Network Interface Card (NIC)"
  value       = azurerm_network_interface.example.name
}

output "nic_location" {
  description = "Location of the created Network Interface Card (NIC)"
  value       = azurerm_network_interface.example.location
}

output "resource_group_name" {
  description = "Name of the Azure resource group where the NIC resides"
  value       = var.resource_group_name
}

output "subnet_id" {
  description = "ID of the associated Azure Subnet"
  value       = var.subnet_id
}

output "nic_ip_configuration_name" {
      value = var.nic_ip_configuration_name
  
}
