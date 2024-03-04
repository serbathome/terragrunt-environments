generate "backend" {
  path      = "backend.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
terraform {
  backend "azurerm" {
    storage_account_name = "tfstates0"
    container_name       = "tfstates"
    key                  = "${path_relative_to_include()}/terraform.tfstate"
    # access_key           = "DkkWkoTOlFh69RZJljRV8fAdXozUPqZ+q6fI0Pi1d7fvjDJtEPIkMDyIn4Wv4i0xULOiJrQU3Elw+AStzd376A=="
  }
}
EOF
}

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "azurerm" {
  features {}
}
EOF
}