
output "subnet_id" {
  description = "ID of the created Azure Subnet"
  value       = azurerm_subnet.example.id
}

output "subnet_name" {
  description = "Name of the created Azure Subnet"
  value       = azurerm_subnet.example.name
}

output "subnet_address_prefixes" {
  description = "Address prefixes of the created Azure Subnet"
  value       = azurerm_subnet.example.address_prefixes
}

output "resource_group_name" {
  description = "Name of the Azure resource group where the resources reside"
  value       = var.resource_group_name
}

