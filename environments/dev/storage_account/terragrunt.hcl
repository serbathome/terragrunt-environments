terraform {
  source = "../../../project/storage-account"
}

inputs = {
  resource_group_name = "rg-storage-dev"
  location            = "East US"
  storage_account_name = "storagewebappdev"
}

include "root" {
  path = find_in_parent_folders()
}