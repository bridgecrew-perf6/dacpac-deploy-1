locals {
  // Core Resource Group
  core_rg_name = format("rg-%s-%s-%s-%s", var.workload, var.env, var.region, var.instance)

  // SQL Server
  sql_server_name           = format("sql-%s-%s-%s-%s", var.workload, var.env, var.region, var.instance)
  sql_server_admin_username = format("%s-admin", local.sql_server_name)
  sql_server_aad_username   = "frasermolyneux-MSFT-9fa77179-17a5-42c2-a94b-833d58f5fa15"
  sql_server_aad_object_id  = "1666cd8b-b573-45d8-9739-e8f2b1425f7b"

  // SQL Database
  sql_database_name = "McTest"
}
