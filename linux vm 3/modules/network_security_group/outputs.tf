
# modules/network_security_group-module/outputs.tf

output "nsg_id" {
  description = "ID of the created Network Security Group (NSG)"
  value       = azurerm_network_security_group.example.id
}

output "nsg_name" {
  description = "Name of the created Network Security Group (NSG)"
  value       = azurerm_network_security_group.example.name
}

output "nsg_location" {
  description = "Location of the created Network Security Group (NSG)"
  value       = azurerm_network_security_group.example.location
}

output "resource_group_name" {
  description = "Name of the Azure resource group where the NSG resides"
  value       = var.resource_group_name
}
