variable "subscriptionId" {
  type = string
}

variable "env" {
  type = string
}

variable "workload" {
  type    = string
  default = "dac"
}

variable "region" {
  type = string
}

variable "instance" {
  type = string
}

// SQL Server
variable "sql_server_aad_username" {
  type    = string
}

variable "sql_server_aad_object_id" {
  type    = string
}