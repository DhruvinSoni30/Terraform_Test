terraform {
  backend "s3" {
    bucket  = "dhsoni-terraform"
    key     = "us-east-1/terraform.tfstate"
    region  = "us-east-2"
    profile = "default"
  }
}