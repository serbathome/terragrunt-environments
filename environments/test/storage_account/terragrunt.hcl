terraform {
  source = "../../../project"
}

inputs = {
  resource_group_name = "rg-storage-test"
  location            = "East US"
  storage_account_name = "storagewebapptest"
  enable_storage_account = true
}

include "root" {
  path = find_in_parent_folders()
}