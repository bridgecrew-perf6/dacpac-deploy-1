resource "azurerm_resource_group" "core_resource_group" {
  name     = local.core_rg_name
  location = var.region
}
