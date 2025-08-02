module "resource_group" {
  source                  = "../module/azuerm_resouce_group"
  resource_group_name     = "rg-todo-app"
  resource_group_location = "Central India"
}

module "resource_group-canda" {
  source = "../../module/azuerm_resouce_group"
  resource_group_name = "rg-todo-app-canda"
  resource_hroup_location = "central canada"
}