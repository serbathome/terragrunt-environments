resource "azurerm_resource_group" "group" {
  name     = var.resource_group_name
  location = var.location
}

module "web_app" {
  source              = "./modules/webapp"
  resource_group_name = azurerm_resource_group.group.name
  location            = azurerm_resource_group.group.location
  service_plan_name   = var.service_plan_name
  web_app_name        = var.web_app_name
}

module "storage_account" {
  source               = "./modules/storage_account"
  resource_group_name  = azurerm_resource_group.group.name
  location             = azurerm_resource_group.group.location
  storage_account_name = var.storage_account_name
}
