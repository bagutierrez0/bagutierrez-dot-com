terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.30.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

#################################
# MODULES
#################################
module "vpc" {
  source = "./modules/vpc"

  availability_zones = var.availability_zones
  ssh_allowed_cidr   = var.ssh_allowed_cidr
}

module "ec2" {
  source = "./modules/ec2"

  ssh_public_key    = var.ssh_public_key
  instance_type     = var.instance_type
  subnet_id         = module.vpc.public_subnet_ids[0]
  security_group_id = module.vpc.security_group_id
}

module "dns" {
  source = "./modules/dns"

  domain_name       = var.domain_name
  ec2_eip_public_ip = module.ec2.ec2_eip_public_ip
}