generate "backend" {
  path      = "backend.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
terraform {
  backend "azurerm" {
    storage_account_name = "tfstates0"
    container_name       = "tfstates"
    key                  = "${path_relative_to_include()}/terraform.tfstate"
  }
}
EOF
}