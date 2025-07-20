resource "azurerm_resource_group" "network" {
  name     = "network_components"
  location = "australiaeast"
}

resource "azurerm_virtual_network" "main" {
  name                = "myVnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.network.location
  resource_group_name = azurerm_resource_group.network.name
}

resource "azurerm_subnet" "main" {
  name                 = "mySubnet"
  resource_group_name  = azurerm_resource_group.network.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_resource_group" "vm" {
  name     = "resources"
  location = "australiaeast"
}

module "vm" {
  source              = "./modules/vm"
  vm_name             = "myLinuxVM"
  resource_group_name = azurerm_resource_group.vm.name
  subnet_id           = azurerm_subnet.main.id
  tags                = {
    created_by   = "senthilk"
    created_date = "20/07/2025"
    env          = "dev"
  }
}