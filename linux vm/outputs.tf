# modules/virtual_network/outputs.tf

output "virtual_network_name" {
  description = "Name of the created Azure Virtual Network"
  value       = module.virtual_network.virtual_network_name
}
