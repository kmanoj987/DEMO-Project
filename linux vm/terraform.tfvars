# Azure principal
client_id = "d0d32736-8799-4e14-8754-0abab9380ec0" # Application ID
subscr_id = "bc921e9e-f9eb-42fd-a4dc-83c2cf250e13" # Subscription ID
tenant_id = "becc0391-2ded-4f01-919c-2db58655b771" # Tenant ID
client_secret = "V7N8Q~m8HeuJOtK_A4y_geIq8uN2kE1UY3DJkbTV"
# terraform.tfvars

resource_group_name     = "iaas-resource-group"
resource_group_location = "west europe"
virtual_network_name    = "iaas-vnet"
address_space           = ["10.0.0.0/16"]


subnet_name             = "example-subnet"
subnet_address_prefixes   = ["10.0.1.0/24"]

nsg_name                = "example-nsg"

nic_name                = "example-nic"
nic_ip_configuration_name = "internal"

vm_name                 = "example-vm"
vm_size                 = "Standard_DS1_v2"
admin_username          = "adminuser"
admin_password          = "Password1234!"  # Replace with your own secure password

tags = {
  environment = "dev"
}
