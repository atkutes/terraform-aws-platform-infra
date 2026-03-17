terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
}

module "vpc" {
  source = "../../modules/vpc"
}

module "ec2" {
  source     = "../../modules/ec2"
  subnet_id  = module.vpc.public_subnets[0]
  vpc_id     = module.vpc.vpc_id
  alb_sg_id  = module.alb.alb_sg_id
}

module "alb" {
  source      = "../../modules/alb"
  subnets     = module.vpc.public_subnets
  vpc_id      = module.vpc.vpc_id
  instance_id = module.ec2.instance_id
}
output "alb_dns" {
  value = module.alb.alb_dns
}