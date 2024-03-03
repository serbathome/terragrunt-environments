
resource "random_string" "random" {
  length  = 5
  special = false
  numeric = true
  upper   = false
  lower   = true
}

resource "azurerm_resource_group" "group" {
  count    = var.enable_storage_account ? 1 : 0
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "storage_account" {
  count                    = var.enable_storage_account ? 1 : 0
  name                     = "${var.storage_account_name}-${random_string.random.result}"
  resource_group_name      = azurerm_resource_group.group[0].name
  location                 = azurerm_resource_group.group[0].location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
