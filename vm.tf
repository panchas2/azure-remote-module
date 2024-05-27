resource "azurerm_linux_virtual_machine" "vmlinux2" {
  resource_group_name = azurerm_resource_group.rgname.name
  name = var.vm_name
  location = var.location
  source_image_reference {
    publisher = "Canonical"
    offer = "UbuntuServer"
    sku = "16.04-LTS"
    version = "latest"
  }
  size = "Standard_D2s_v3"
  network_interface_ids = [ azurerm_network_interface.nic2.id ]
  admin_username = "locroot"
  admin_password = "P@ssw0rd123"
  disable_password_authentication = false
  os_disk {
    caching = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  # admin_ssh_key {
  #   username = "locroot"
  #   public_key = file("~/.ssh/panchas.dev.pub")
  # }
}