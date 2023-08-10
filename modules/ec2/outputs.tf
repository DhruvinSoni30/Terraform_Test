# EC2 instance ID
output "ec2_id" {
  value = aws_instance.demo_instance_public_1.id
}