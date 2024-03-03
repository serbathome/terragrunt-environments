terraform {
  source = "../../../project"
}

inputs = {
  resource_group_name = "rg-storage-dev"
  location            = "East US"
  storage_account_name = "storagewebappdev"
  enable_storage_account = true
}

include "root" {
  path = find_in_parent_folders()
}