# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 3.21" # Optional but recommended in production
    }
  }
} # Test

# Provider Block
provider "aws" {
  profile = "g025" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "ap-southeast-1"
}

# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-0dc5785603ad4ff54" # Amazon Linux in us-east-1, update as per your region
  instance_type = "t2.micro"
}
