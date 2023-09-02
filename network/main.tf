resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = ["10.0.0.0/16"]
}

# Definiowanie innych zasobów sieci, takich jak subnety, reguły NSG itp.
