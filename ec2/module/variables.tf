variable "region" {
  type        = string
  description = "Name of the AWS region to deploy EC2 instance into"
  default     = "us-east-1"
}

variable "instance_name" {
  type        = string
  description = "Name of the EC2 instance to deploy"
  default     = "example-instance"
}

variable "instance_type" {
  type        = string
  description = "The type/size of EC2 instance"
  default     = "t2.micro"
}

variable "ami_id" {
  type        = string
  description = "AMI ID for the EC2 instance"
  default     = ""
}

variable "key_name" {
  type        = string
  description = "SSH key name for accessing EC2 instance"
}

variable "monitoring_enabled" {
  type        = bool
  description = "Whether or not to enable EC2 instance monitoring"
  default     = false
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID to place instance into"
}
