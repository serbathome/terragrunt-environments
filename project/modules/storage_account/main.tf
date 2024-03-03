
resource "random_string" "random" {
  length  = 5
  special = false
  numeric = true
  upper   = false
  lower   = true
}

data "azurerm_resource_group" "resource_group" {
  name = var.resource_group_name
}

resource "azurerm_storage_account" "storage_account" {
  name                     = "${var.storage_account_name}-${random_string.random.result}"
  resource_group_name      = data.azurerm_resource_group.resource_group.name
  location                 = data.azurerm_resource_group.resource_group.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
