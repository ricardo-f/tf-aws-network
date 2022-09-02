variable "main_cidr" {
  default = "192.168.0.0/24"
}

locals {
  pvt_sub = "192.168.0.0/25"
  pub_sub = "192.168.0.128/25"
}

variable "azs" {
  default = "us-east-1a"
}