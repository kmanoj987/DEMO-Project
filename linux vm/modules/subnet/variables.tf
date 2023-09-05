
variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
}

variable "subnet_name" {
  description = "Name of the Azure Subnet"
  type        = string
}

variable "subnet_address_prefixes" {
  description = "Address prefixes for the Azure Subnet"
  type        = list(string)
}

variable "virtual_network_name" {
      description = "name of the virtual network"
}