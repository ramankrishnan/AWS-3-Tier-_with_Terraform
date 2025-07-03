# Terraform Settings Block
terraform {
  required_version = ">= 1.6.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0"
  # Use latest stable version
    }
  }
}

# Terraform Provider Block
provider "aws" {
  region = var.aws_region
}
