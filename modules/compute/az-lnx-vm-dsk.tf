resource "azurerm_managed_disk" "ubu-data-disk" {
  name                 = "ubuntu-data-disk"
  location            = azurerm_resource_group.ubuntu1-rg.location
  resource_group_name = azurerm_resource_group.ubuntu1-rg.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = 64
}

resource "azurerm_virtual_machine_data_disk_attachment" "attach" {
  managed_disk_id    = azurerm_managed_disk.data_diskubu-data-disk.id
  virtual_machine_id = azurerm_linux_virtual_machine.test-ubu-1-vm.id
  lun                = 0
  caching            = "ReadWrite"
}