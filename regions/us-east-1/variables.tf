# Region
variable "region" {}

# Project Name
variable "project_name" {}

# VPC CIDR
variable "vpc_cidr" {}

# Subnet CIDR
variable "public_subnet_az1_cidr" {}

# Instance Type
variable "instance_type" {}

# Key 
variable "key_name" {
  default = "Demo-key"
}
