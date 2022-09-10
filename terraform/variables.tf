variable "main_cidr" {
  default     = "192.168.0.0/24"
  description = "CIDR block for th VPC"
}

variable "pvt_subnet" {
  default     = "192.168.0.0/25"
  description = "Subnetting of the VPC CIDR for private subnet"
}

variable "pub_subnet" {
  default     = "192.168.0.128/25"
  description = "Subnetting of the VPC CIDR for public subnet"
}

variable "az" {
  default = "us-east-1a"
  description = "AZ for the subnets, since this was a Lab one az was suffice, in prod envs use a minimum of 2 azs"
}
