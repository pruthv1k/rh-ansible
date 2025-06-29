variable "region" {
  type        = string
  description = "Name of the AWS region to deploy VPC into"
  default     = "us-east-1"
}

variable "vpc_name" {
  type        = string
  description = "Name of the VPC"
  default     = "example-vpc"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR address for the VPC"
  default     = "10.0.0.0/16"
}

variable "enable_nat_gateway" {
  type        = bool
  description = "Whether or not to enable a NAT gateway for the private subnets"
  default     = true
}

variable "enable_vpn_gateway" {
  type        = bool
  description = "Whether or not to enable a VPN gateway"
  default     = false
}

variable "subnet_count" {
  type        = number
  description = "Whether or not to enable a VPN gateway"
  default     = 4
}
