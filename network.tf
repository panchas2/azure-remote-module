resource "azurerm_resource_group" "rgname" {
  location = var.location
  name = var.resource_group_name
  tags = var.resource_tags
}

resource "azurerm_subnet" "name" {
  name = var.subnet_name
  resource_group_name = azurerm_resource_group.rgname.name
  virtual_network_name = azurerm_virtual_network.vnet2.name
  address_prefixes = [ "10.221.59.0/24" ]
}

resource "azurerm_virtual_network" "vnet2" {
  name = var.virtual_network_name
  resource_group_name = azurerm_resource_group.rgname.name
  address_space = [ "10.221.59.0/24" ]
  location = azurerm_resource_group.rgname.location
}

resource "azurerm_network_interface" "nic2" {
  name = "nic2"
  location = var.location
  resource_group_name = azurerm_resource_group.rgname.name

  ip_configuration {
    name = "intnicipname"
    subnet_id = azurerm_subnet.name.id
    private_ip_address_allocation = "Dynamic"
  }
}