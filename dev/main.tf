module "cloudfront" {
  source          = "./cloudfront"
  zone_jjada_io   = module.route53.zone_jjada_io
  acm_jjada_io    = module.route53.acm_jjada_io
}

module "elasticbeanstalk" {
  source                  = "./elasticbeanstalk"
  vpc_dev_id              = module.vpc.vpc_dev_id
  vpc_dev_public_subnets  = module.vpc.vpc_dev_public_subnets
  vpc_dev_private_subnets = module.vpc.vpc_dev_private_subnets
}

module "rds" {
  source                  = "./rds"
  vpc_dev_private_subnets = module.vpc.vpc_dev_private_subnets
  vpc_dev_sg_id           = module.vpc.vpc_dev_sg_id
}

module "route53" {
  source = "./route53"
}

module "vpc" {
  source        = "./vpc"
  zone_jjada_io = module.route53.zone_jjada_io
  acm_jjada_io  = module.route53.acm_jjada_io
}
