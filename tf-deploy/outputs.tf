output "sql_server_domain_name" {
  value     = azurerm_mssql_server.sql_server.fully_qualified_domain_name
  sensitive = true
}

output "sql_database_name" {
  value     = azurerm_mssql_database.portal_database.name
  sensitive = true
}

output "sql_admin_username" {
  value     = local.sql_server_admin_username
  sensitive = true
}

output "sql_admin_password" {
  value     = random_password.sql_server_admin_password.result
  sensitive = true
}
