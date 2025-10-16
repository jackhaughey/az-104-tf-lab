resource "azurerm_network_interface" "test-ubu-1-ni" {
  name                = "test-ubu-1-ni"
  location            = azurerm_resource_group.ubuntu1-rg.location
  resource_group_name = azurerm_resource_group.ubuntu1-rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.vm-subnet-1.id
    private_ip_address_allocation = "Dynamic"
  }
}