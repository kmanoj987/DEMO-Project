# resource_group/outputs.tf

output "resource_group_id" {
  value = azurerm_resource_group.example.id
}

# resource_group/outputs.tf

output "resource_group_location" {
  value = azurerm_resource_group.example.location
}

# resource_group/outputs.tf

output "resource_group_name" {
  value = azurerm_resource_group.example.name
}
