terraform {
  source = "git::https://github.com/serbathome/tfmodule-webapp.git?ref=main"
}

inputs = {
  resource_group_name = "rg-webapp-dev"
  location            = "East US"
  service_plan_name = "sp-webapp-dev"
  web_app_name = "app-webapp-dev"
}

include "root" {
  path = find_in_parent_folders()
}