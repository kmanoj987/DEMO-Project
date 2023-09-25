
# outputs

output "vm_id" {
  description = "ID of the created Virtual Machine"
  value       = azurerm_virtual_machine.example.id
}

output "vm_name" {
  description = "Name of the Virtual_name"
  value = azurerm_virtual_machine.example.name
}