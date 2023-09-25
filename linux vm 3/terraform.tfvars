
# terraform.tfvars

resource_group_name     = "rg-weu-iaas-dev"
resource_group_location = "west europe"
virtual_network_name    = "vnet-weu-iaas-dev"
address_space           = ["10.0.0.0/16"]


subnet_name             = "subnet-weu-iaas-dev"
subnet_address_prefixes   = ["10.0.1.0/24"]

nsg_name                = "nsg-weu-iaas-dev"

nic_name                = "nic-weu-iaas-dev"
nic_ip_configuration_name = "internal"


vm_name                 = "Terraform-vm"
vm_size                 = "Standard_DS1_v2"
admin_username          = "adminuser"
# admin_ssh_key           = "YjlhmOrerg4+S03DrsDuZ2tLplyxdOdFEUKMJun5Lm8 your_email@example.com"


tags = {
  environment = "dev"
}
