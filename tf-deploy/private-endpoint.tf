resource "random_string" "random" {
  length  = 6
  special = false
  upper   = false
}

resource "azurerm_virtual_network" "example" {
  name                = "${random_string.random.result}-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.core_resource_group.location
  resource_group_name = azurerm_resource_group.core_resource_group.name
}

resource "azurerm_subnet" "example" {
  name                 = "${random_string.random.result}-subnet"
  resource_group_name  = azurerm_resource_group.core_resource_group.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefix       = "10.0.1.0/24"

  enforce_private_link_endpoint_network_policies = true
}

resource "azurerm_private_endpoint" "example" {
  name                = "${random_string.random.result}-endpoint"
  location            = azurerm_resource_group.core_resource_group.location
  resource_group_name = azurerm_resource_group.core_resource_group.name
  subnet_id           = azurerm_subnet.example.id

  private_service_connection {
    name                           = "${random_string.random.result}-privateserviceconnection"
    private_connection_resource_id = "/subscriptions/655da25d-da46-40c0-8e81-5debe2dcd024/resourcegroups/rg-test/providers/Microsoft.Storage/storageAccounts/asdatpetest"
    subresource_names              = ["blob"]
    is_manual_connection           = true
    request_message                = "Hi"
  }
}
