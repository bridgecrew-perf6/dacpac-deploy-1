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

variable "private_endpoints" {
  type = map(object({
    dns_zone             = string,
    link_id              = string,
    request_message      = string,
    type                 = list(string),
    is_manual_connection = bool
  }))
}
