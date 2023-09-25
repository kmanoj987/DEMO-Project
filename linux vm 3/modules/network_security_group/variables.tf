
# modules/network_security_group-module/variables.tf

variable "nsg_name" {
  description = "Name of the Network Security Group (NSG)"
  type        = string
}

variable "nsg_location" {
  description = "Location of the NSG"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
}
