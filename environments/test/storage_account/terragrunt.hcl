terraform {
  source = "git::https://github.com/serbathome/tfmodule-storage-account.git?ref=main"
}

inputs = {
  resource_group_name = "rg-storage-test"
  location            = "East US"
  storage_account_name = "storagewebapptest"
}

include "root" {
  path = find_in_parent_folders()
}