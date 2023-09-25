
# modules/network_security_group/main.tf

resource "azurerm_network_security_group" "example" {
  name                = var.nsg_name
  location            = var.nsg_location
  resource_group_name = var.resource_group_name
}
