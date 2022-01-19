subscriptionId = "9fa77179-17a5-42c2-a94b-833d58f5fa15"
env            = "box"
region         = "uksouth"
instance       = "01"

private_endpoints = {
  pe-blob = {
    dns_zone             = "privatelink.blob.core.windows.net",
    link_id              = "/subscriptions/655da25d-da46-40c0-8e81-5debe2dcd024/resourcegroups/rg-test/providers/Microsoft.Storage/storageAccounts/asdatpetest",
    is_manual_connection = true,
    request_message      = "Hi",
    type                 = ["blob"]
  },
  pe-table = {
    dns_zone             = "privatelink.blob.core.windows.net",
    link_id              = "/subscriptions/655da25d-da46-40c0-8e81-5debe2dcd024/resourcegroups/rg-test/providers/Microsoft.Storage/storageAccounts/asdatpetest",
    is_manual_connection = true,
    request_message      = "Hi2",
    type                 = ["table"]
  }
}
