module "vpc" {
  source      = "./modules/vpc" # Matches the path to the vpc module
  vpc_cidr    = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
}

module "sg" {
  source = "./modules/sg" # Matches the path to the sg module
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source  = "./modules/ec2" # Corrected to match the ec2 module
  sg_id   = module.sg.sg_id
  subnets = module.vpc.subnet_ids
}

module "alb" {
  source    = "./modules/alb"
  sg_id     = module.sg.sg_id
  subnets   = module.vpc.subnet_ids
  vpc_id    = module.vpc.vpc_id
  instances = module.ec2.instance_ids
}

