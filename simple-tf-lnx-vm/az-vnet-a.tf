resource "azurerm_virtual_network" "vm-vnet" {
  name                = "vm-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.ubuntu1-rg.location
  resource_group_name = azurerm_resource_group.ubuntu1-rg.name
}

