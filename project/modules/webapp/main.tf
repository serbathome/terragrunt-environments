provider "azurerm" {
  features {
  }
}

resource "random_string" "random" {
  length  = 5
  special = false
  numeric = true
  upper   = false
  lower   = true
}

resource "azurerm_resource_group" "group" {
  count    = var.enable_webapp ? 1 : 0
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_service_plan" "service_plan" {
  count               = var.enable_webapp ? 1 : 0
  name                = "${var.service_plan_name}-${random_string.random.result}"
  location            = azurerm_resource_group.group[0].location
  resource_group_name = azurerm_resource_group.group[0].name
  os_type             = "Linux"
  sku_name            = "B1"
}

resource "azurerm_linux_web_app" "web_app" {
  count               = var.enable_webapp ? 1 : 0
  name                = "${var.web_app_name}-${random_string.random.result}"
  location            = azurerm_resource_group.group[0].location
  resource_group_name = azurerm_resource_group.group[0].name
  service_plan_id     = azurerm_service_plan.service_plan[0].id
  site_config {
    always_on = false
  }
}

