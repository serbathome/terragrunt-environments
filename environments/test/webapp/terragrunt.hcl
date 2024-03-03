terraform {
  source = "../../../project"
}

inputs = {
  resource_group_name = "rg-webapp-test"
  location            = "East US"
  service_plan_name = "sp-webapp-test"
  web_app_name = "app-webapp-test"
}

include "root" {
  path = find_in_parent_folders()
}