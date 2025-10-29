terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "simple_ec2" {
  source = "./modules/ec2-simple"

  instance_name    = var.instance_name
  instance_type    = var.instance_type
  aws_region       = var.aws_region
  subnet_cidr      = var.subnet_cidr
  ssh_allowed_ips  = var.ssh_allowed_ips
}