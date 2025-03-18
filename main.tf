provider "aws" {
  region = var.aws_region
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.86.0"
    }
  }
}

resource "aws_instance" "dev-instance" {
  ami           = var.ami_id
  instance_type = var.instance_size
  count         = var.instance_count
  key_name      = var.instance_key
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name        = "My Network"
    Environment = "Dev"
  }
}
