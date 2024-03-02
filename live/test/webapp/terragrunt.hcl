terraform {
  source = "../../../modules/webapp"
}

inputs = {
  resource_group_name = "rg-webapp-test"
  location            = "East US"
  service_plan_name = "sp-webapp-test"
  web_app_name = "app-webapp-test"
}