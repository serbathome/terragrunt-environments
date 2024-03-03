terraform {
  source = "../../../project/storage_account"
}

inputs = {
  resource_group_name = "rg-storage-test"
  location            = "East US"
  storage_account_name = "storagewebapptest"
}

include "root" {
  path = find_in_parent_folders()
}