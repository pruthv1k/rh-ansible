variable "region" {
  type        = string
  description = "Name of the AWS region to deploy VPC into"
  default     = "us-east-1"
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of subnets for transit gateway attachment"
}

variable "route_table_ids" {
  type        = list(string)
  description = "List of route table IDs to create TGW route for"
}

variable "transit_gateway_id" {
  type        = string
  description = "ID of the Transit Gateway to attach VPC to"
}

variable "vpc_id" {
  type        = string
  description = "ID of the VPC to connect with the TGW"
}

variable "destination_cidr" {
  type        = string
  description = "Destination CIDR address to route"
  default     = "172.16.0.0/16"
}
