variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR"
}

variable "subnet_cidr" {
  type        = list(string)
  description = "Subnet CIDR"
}

variable "subnet_names" {
  description = "Subnet names"
  type        = list(string)
  default = [ "PublicSubnet1", "PublicSubnet2" ]
}