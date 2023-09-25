
variable "vm_name" {
  description = "Name of the Virtual Machine"
  type        = string
}

variable "vm_location" {
  description = "Location of the Virtual Machine"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
}

variable "nic_id" {
  description = "ID of the Network Interface (NIC) to associate with the VM"
  type        = string
}

variable "vm_size" {
  description = "Size of the Virtual Machine"
  type        = string
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
}


variable "tags" {
  description = "Tags to associate with the VM"
  type        = map(string)
}


