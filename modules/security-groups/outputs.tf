# Public EC2 security group id
output "public_ec2_security_group_id" {
  value = aws_security_group.public_ec2_security_group.id
}
