resource "azuread_group" "sql_server_admins" {
  display_name     = local.sql_server_admin_group_name
  owners           = [data.azuread_client_config.current.object_id]
  security_enabled = true
}

resource "azuread_group" "sql_sampledb_database_readers_group" {
  display_name     = local.sampledb_readers_group_name
  owners           = [data.azuread_client_config.current.object_id]
  security_enabled = true
}

resource "azuread_group" "sql_sampledb_database_writers_group" {
  display_name     = local.sampledb_writers_group_name
  owners           = [data.azuread_client_config.current.object_id]
  security_enabled = true
}
