# Fetching Ubuntu 20.04 AMI ID
data "aws_ami" "amazon_linux_2" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

# create EC2 instance in public subnet
resource "aws_instance" "demo_instance_public_1" {

  ami                    = data.aws_ami.amazon_linux_2.id
  vpc_security_group_ids = [var.public_ec2_security_group]
  instance_type          = var.instance_type
  availability_zone      = data.aws_availability_zones.az.names[0]
  subnet_id              = var.public_subnet_az1
  key_name               = var.key_name

  tags = {
    "Name" = "${var.project_name}-public-instance"
  }

}

# AZ
data "aws_availability_zones" "az" {}
