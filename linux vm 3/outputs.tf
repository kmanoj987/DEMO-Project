# modules/virtual_network/outputs.tf

output "virtual_network_name" {
  description = "Name of the created Azure Virtual Network"
  value       = module.virtual_network.virtual_network_name
}


output "vm_name" {
  description = "Name of the Virtual_name"
  value = module.virtual_machine.vm_name
}

output "resource_group_name" {
  description = "Name of the resource group name"
  value = module.resource_group.resource_group_name
}