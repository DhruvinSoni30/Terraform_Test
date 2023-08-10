# Configure aws provider
provider "aws" {
  region  = var.region
  profile = "default"
}

# Create VPC
module "vpc" {

  source                 = "../../modules/vpc"
  region                 = var.region
  project_name           = var.project_name
  vpc_cidr               = var.vpc_cidr
  public_subnet_az1_cidr = var.public_subnet_az1_cidr

}

# Create Security Group
module "security_group" {

  source = "../../modules/security-groups"
  vpc_id = module.vpc.vpc_id

}

# Create key pair
module "key_pair" {

  source = "../../modules/key_pair"
  key_name = var.key_name

}

# Create EC2 instance
module "ec2_instance" {

  source                    = "../../modules/ec2"
  instance_type             = var.instance_type
  public_ec2_security_group = module.security_group.public_ec2_security_group_id
  public_subnet_az1         = module.vpc.public_subnet_az1_id
  project_name              = module.vpc.project_name
  key_name                  = module.key_pair.id

}





