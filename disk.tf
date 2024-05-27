resource "azurerm_managed_disk" "mgdisk2" {
  name = var.disk_name
  location = var.location
  resource_group_name = azurerm_resource_group.rgname.name
  storage_account_type = "Standard_LRS"
  create_option = "Empty"
  disk_size_gb = var.disk_size

  tags = {
    env = "staging"
  }
}

resource "azurerm_virtual_machine_data_disk_attachment" "vmdiskatach" {
  managed_disk_id = azurerm_managed_disk.mgdisk2.id
  virtual_machine_id = azurerm_linux_virtual_machine.vmlinux2.id
  lun = "10"
  caching = "ReadWrite"
}