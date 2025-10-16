resource "azurerm_subnet" "vm-subnet-1" {
  name                 = "vm-subnet-1"
  virtual_network_name = azurerm_virtual_network.vm-vnet.name
  resource_group_name  = azurerm_resource_group.ubuntu1-rg.name
  address_prefixes     = ["10.0.2.0/24"]
}