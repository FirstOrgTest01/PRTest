# This module creates an Azure Resource Group for the TODO application environment
module "resource_group" {
  source                  = "../module/azuerm_resouce_group"
  resource_group_name     = "rg-todo-app"
  resource_group_location = "Central India"
}

module "virtual_network-frontend" {
  depends_on = [ module.resource_group ]
  source = "../module/azurerm_virtual_network"
  virtual_network_name                = "vnet-todo-app"
  virtual_network_loaction            = "Central India"
  virtual_network_resource_group_name = "rg-todo-app"
  virtual_network_address_space       = ["10.0.0.0/16"]
  virtual_network_dns_servers         = ["10.0.1.4", "10.0.2.4"]
}

module "virtual_network-backend" {
  depends_on = [ module.resource_group ]
  source = "../module/azurerm_virtual_network"
  virtual_network_name                = "vnet-todo-app-1"
  virtual_network_loaction            = "Central India"
  virtual_network_resource_group_name = "rg-todo-app"
  virtual_network_address_space       = ["10.0.0.0/16"]
  virtual_network_dns_servers         = ["10.0.1.4", "10.0.2.4"]
}
