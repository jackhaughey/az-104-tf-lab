resource "azurerm_resource_group" "ubuntu1-rg" {
  name     = "ubuntu-vm-rg"
  location = "West Europe"
}

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

resource "azurerm_linux_virtual_machine" "test-ubu-1-vm" {
  name                = "test-ubu-1-vm"
  resource_group_name = azurerm_resource_group.ubuntu1-rg.name
  location            = azurerm_resource_group.ubuntu1-rg.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  network_interface_ids = [
    azurerm_network_interface.test-ubu-1-ni.id,
  ]

  admin_ssh_key {
    username   = "adminuser"
    public_key = file("~/.ssh/id_rsa.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}