#------------------------------------------------
# VPC module (Hyun Soo Kim)
#------------------------------------------------

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr = var.vpc_cidr

  public_subnet_a_cidr  = var.public_subnet_a_cidr
  public_subnet_b_cidr  = var.public_subnet_b_cidr
  private_subnet_a_cidr = var.private_subnet_a_cidr
  private_subnet_b_cidr = var.private_subnet_b_cidr

  availability_zone_a = var.availability_zone_a
  availability_zone_b = var.availability_zone_b

  alb_sg_name             = var.alb_sg_name
  alb_sg_tag_name         = var.alb_sg_tag_name
  alb_ingress_cidr_blocks = var.alb_ingress_cidr_blocks

  rds_sg_name     = var.rds_sg_name
  rds_sg_tag_name = var.rds_sg_tag_name
}
