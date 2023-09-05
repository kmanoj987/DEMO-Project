

# main.tf
module "resource_group" {
  source                  = "./modules/resource_group"
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
}


# main.tf

# Deploy Azure Virtual Network
module "virtual_network" {
  source                = "./modules/virtual_network"
  virtual_network_name  = var.virtual_network_name
  address_space         = var.address_space
  virtual_network_location = var.resource_group_location
  resource_group_name   = module.resource_group.resource_group_name
}

# Deploy Azure Subnet
module "subnet" {
  source                = "./modules/subnet"
  subnet_name           = var.subnet_name
  resource_group_name  = module.resource_group.resource_group_name
  virtual_network_name = module.virtual_network.virtual_network_name
  subnet_address_prefixes = var.subnet_address_prefixes
}


# main.tf

module "network_security_group" {
  source          = "./modules/network_security_group"
  resource_group_name  = module.resource_group.resource_group_name
  nsg_location = var.resource_group_location
  nsg_name = var.nsg_name
}


module "network_interface" {
  source                        = "./modules/network_interface"
  nic_name                      = var.nic_name
  resource_group_name           = module.resource_group.resource_group_name
  nic_location                  = var.resource_group_location
  subnet_id                     = module.subnet.subnet_id
  nic_ip_configuration_name     = var.nic_ip_configuration_name
}

module "virtual_machine" {
  source              = "./modules/virtual_machine"
  vm_name             = var.vm_name
  vm_location         = var.resource_group_location
  resource_group_name = module.resource_group.resource_group_name
  nic_id              = module.network_interface.nic_id
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  tags                = var.tags
}

