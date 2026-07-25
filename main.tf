module "network" {
  source = "./network"

  environment = var.environment
  vpc_cidr    = var.vpc_cidr
}