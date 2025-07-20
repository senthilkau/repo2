resource "azurerm_virtual_network" "main" {
  name                = var.network_name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.network_resource_group
}

resource "azurerm_subnet" "main" {
  name                 = var.subnet_name
  resource_group_name  = var.network_resource_group
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = var.subnet_address_prefixes
}

output "virtual_network_id" {
  value = azurerm_virtual_network.main.id
}

output "subnet_id" {
  value = azurerm_subnet.main.id
}