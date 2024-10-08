# environments/dev/main.tf
provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source       = "./modules/vpc"
  vpc_name     = var.vpc_name
  cidr_block   = var.vpc_cidr
}

module "subnets" {
  source             = "./modules/subnets"
  vpc_id             = module.vpc.vpc_id
  public_subnets     = var.public_subnets
  private_subnets    = var.private_subnets
  availability_zones = var.availability_zones
}

module "internet_gateway" {
  source = "./modules/internet-gateway"
  vpc_id = module.vpc.vpc_id
}

module "route_tables" {
  source                 = "./modules/route-tables"
  vpc_id                 = module.vpc.vpc_id
  public_subnets         = module.subnets.public_subnet_ids
  private_subnets        = module.subnets.private_subnet_ids
  internet_gateway_id    = module.internet_gateway.igw_id
}
