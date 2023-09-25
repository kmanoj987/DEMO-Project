# resource_group/variables.tf

variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
}

variable "resource_group_location" {
  description = "Location of the Azure resource group"
  type        = string
}
