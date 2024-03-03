
module "web_app" {
  count               = var.enable_webapp ? 1 : 0
  source              = "./modules/webapp"
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_name   = var.service_plan_name
  web_app_name        = var.web_app_name
}

module "storage_account" {
  count                = var.enable_storage_account ? 1 : 0
  source               = "./modules/storage_account"
  resource_group_name  = var.resource_group_name
  location             = var.location
  storage_account_name = var.storage_account_name
}
