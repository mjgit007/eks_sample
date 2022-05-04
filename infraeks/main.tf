terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region 
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = var.cidr
  #name = var.vpc_name

  tags = {
    "name" = var.vpc_name 
  }


}
