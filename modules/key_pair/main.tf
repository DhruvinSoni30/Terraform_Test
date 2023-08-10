# Fetching AWS Key Pair from AWS
data "aws_key_pair" "demo_key" {
  key_name           = var.key_name
  include_public_key = true
}