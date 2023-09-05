

# virtual_network/main.tf

resource "azurerm_virtual_network" "example" {
  name                = var.virtual_network_name
  address_space       = var.address_space
  location            = var.virtual_network_location
  resource_group_name = var.resource_group_name
}
