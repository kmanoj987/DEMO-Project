# variables.tf

variable "nic_name" {
  description = "Name of the Network Interface Card (NIC)"
  type        = string
}

variable "nic_location" {
  description = "Location of the NIC"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
}

variable "nic_ip_configuration_name" {
  description = "Name of the NIC's IP configuration"
  type        = string
}

variable "subnet_id" {
  description = "ID of the Azure Subnet to associate with the NIC"
  type        = string
}
