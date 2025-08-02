# Create resource group for todo app in Central India
module "resource_group" {
  source                  = "../module/azuerm_resouce_group"
  resource_group_name     = "rg-todo-app"
  resource_group_location = "Central India"
}

# Create resource group for todo app in Canada
module "resource_group-canda" {
  source = "../../module/azuerm_resouce_group"
  resource_group_name = "rg-todo-app-canda"
  resource_group_location = "central canada"
}