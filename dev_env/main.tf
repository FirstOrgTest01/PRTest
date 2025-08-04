# This module creates an Azure Resource Group for the TODO application environment
module "resource_group" {
  source                  = "../module/azuerm_resouce_group"
  resource_group_name     = "rg-todo-app"
  resource_group_location = "Central India"
}

module "rg1"{
  source = "../module/azuerm_resouce_group"
  resource_group_name = "rg-todo-west-us"
  resource_group_location = "West US"
}