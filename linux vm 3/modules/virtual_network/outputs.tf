# virtual_network/outputs.tf

output "virtual_network_id" {
  value = azurerm_virtual_network.example.id
}


# modules/virtual_network/outputs.tf

output "virtual_network_name" {
  description = "Name of the created Azure Virtual Network"
  value       = azurerm_virtual_network.example.name
}

output "virtual_network_location" {
      description = "location of the created virtual location"
      value = azurerm_virtual_network.example.location
  
}