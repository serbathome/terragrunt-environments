terraform {
  source = "../../../project/storage_account"
}

inputs = {
  resource_group_name = "rg-storage-uat"
  location            = "East US"
  storage_account_name = "storagewebappuat"
}

include "root" {
  path = find_in_parent_folders()
}