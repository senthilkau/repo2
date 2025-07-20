resource "azurerm_virtual_network" "main" {
  name                = "myVnet"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = "network_components"
}

resource "azurerm_subnet" "main" {
  name                 = "mySubnet"
  resource_group_name  = "network_components"
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_network_interface" "main" {
  name                = "myNIC"
  location            = var.location
  resource_group_name = "resources"

  ip_configuration {
    name                          = "myNICConfig"
    subnet_id                     = azurerm_subnet.main.id
    private_ip_address_allocation = "Dynamic"
  }
}