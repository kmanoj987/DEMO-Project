variable "resource_group_name" {
      type = string
}

variable "resource_group_location" {
      type = string
}


variable "address_space" {
      type = list(string)
}

variable "virtual_network_name" {
  description = "Name of the Azure virtual network"
  type        = string
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}

variable "nsg_name" {
  description = "Name of the Network Security Group (NSG)"
  type        = string
}


variable "subnet_address_prefixes" {
      type = list(string)
  
}


variable "nic_name" {
  description = "Name of the Network Interface (NIC)"
  type        = string
}

variable "nic_ip_configuration_name" {
  description = "Name of the NIC's IP configuration"
  type        = string
}

variable "vm_name" {
      type = string
  
}

variable "vm_size" {
      type = string
}

variable "admin_username" {
      type = string 
}

variable "admin_password" {
      type = string     
}

variable "tags" {
  description = "A map of tags to apply to the virtual machine"
  type        = map(string)
  default     = {}
}
