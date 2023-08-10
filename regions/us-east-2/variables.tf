variable "region" {}
variable "project_name" {}
variable "vpc_cidr" {}
variable "public_subnet_az1_cidr" {}
variable "instance_type" {}
# Key 
variable "key_name" {
  default = "Demo-key"
}