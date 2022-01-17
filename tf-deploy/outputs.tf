output "sql_server_domain_name" {
  value     = azurerm_mssql_server.sql_server.fully_qualified_domain_name
  sensitive = true
}

output "sql_database_name" {
  value     = azurerm_mssql_database.mssql_database.name
  sensitive = true
}