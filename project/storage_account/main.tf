
module "storage_account" {
  source               = "./modules/storage_account"
  resource_group_name  = var.resource_group_name
  location             = var.location
  storage_account_name = var.storage_account_name
}
