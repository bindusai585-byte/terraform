module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = var.vpc_cidr

  azs             = var.availability_zones
  public_subnets = var.vpc_public_subnets
  private_subnets  = var.vpc_private_subnets


  enable_nat_gateway = true
  single_nat_gateway = true

  enable_dns_hostnames = true
    enable_dns_support   = true

  tags = {
    name = "my-vpc"
    public_subnets = "my-public-subnets"
    private_subnets = "my-private-subnets"
  }
}