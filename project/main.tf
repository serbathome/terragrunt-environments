module "web_app" {
  source              = "./modules/webapp"
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_name   = var.service_plan_name
  web_app_name        = var.web_app_name
}
