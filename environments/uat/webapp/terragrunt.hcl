terraform {
  source = "../../../project"
}

inputs = {
  resource_group_name = "rg-webapp-uat"
  location            = "East US"
  service_plan_name = "sp-webapp-uat"
  web_app_name = "app-webapp-uat"
}

include "root" {
  path = find_in_parent_folders()
}