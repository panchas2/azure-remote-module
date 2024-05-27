output "resource_group" {
  value = azurerm_resource_group.rgname.name
}

output "location" {
  value = azurerm_resource_group.rgname.location
}

output "virtual_network_name" {
  value = azurerm_virtual_network.vnet2.name
}