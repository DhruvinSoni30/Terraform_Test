# Region
output "region" {
  value = var.region
}

# Project Name 
output "project_name" {
  value = var.project_name
}

# VPC ID
output "vpc_id" {
  value = aws_vpc.vpc.id
}

# Public Subnet
output "public_subnet_az1_id" {
  value = aws_subnet.public_subnet_az1.id
}

# Internet gateway
output "internet_gateway" {
  value = aws_internet_gateway.internet_gateway.id
}