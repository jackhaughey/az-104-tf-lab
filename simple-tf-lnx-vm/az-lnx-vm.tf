resource "azurerm_linux_virtual_machine" "test-ubu-1-vm" {
  name                = var.vm_name
  resource_group_name = azurerm_resource_group.ubuntu1-rg.name
  location            = azurerm_resource_group.ubuntu1-rg.location
  size                = "Standard_B1s"
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