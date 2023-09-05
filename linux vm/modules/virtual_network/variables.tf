variable "virtual_network_name" {
  description = "Name of the Azure Virtual Network"
  type        = string
}

variable "address_space" {
  description = "Address space for the Azure Virtual Network"
  type        = list(string)
}

variable "virtual_network_location" {
  description = "Location of the Azure Virtual Network"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
}