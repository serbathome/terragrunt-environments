terraform {
  source = "../../../project"
}

inputs = {
  resource_group_name = "rg-webapp-dev"
  location            = "East US"
  service_plan_name = "sp-webapp-dev"
  web_app_name = "app-webapp-dev"
}