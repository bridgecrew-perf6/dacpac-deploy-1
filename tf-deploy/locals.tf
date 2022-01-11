locals {
  // Core Resource Group
  core_rg_name = format("rg-%s-%s-%s-%s", var.workload, var.env, var.region, var.instance)

  // SQL Server
  sql_server_name           = format("sql-%s-%s-%s-%s", var.workload, var.env, var.region, var.instance)
  sql_server_admin_username = format("%s-admin", local.sql_server_name)

  // SQL Database
  sql_database_name = "McTest"
}
