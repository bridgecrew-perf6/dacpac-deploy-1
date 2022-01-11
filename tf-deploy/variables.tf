variable "subscriptionId" {
  type = string
}

variable "env" {
  type = string
}

variable "workload" {
  type    = string
  default = "sql"
}

variable "region" {
  type = string
}

variable "instance" {
  type = string
}
