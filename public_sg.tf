module "public_security-group" {
  source              = "terraform-aws-modules/security-group/aws"
  version             = "5.3.0"
  name                = "public-sg"
  description         = "Security group for public instance"
  vpc_id              = module.vpc.vpc_id
  
  # Define ingress rules directly using computed_ingress_with_source_security_group_id
  ingress_with_cidr_blocks = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "SSH access"
      cidr_blocks = "10.0.0.0/16"
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      description = "HTTP access"
      cidr_blocks = "10.0.0.0/16"
    },
    {
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      description = "HTTPS access"
      cidr_blocks = "10.0.0.0/16"
    }
  ]

  # Define egress rules
  egress_with_cidr_blocks = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Allow all outbound traffic"
      cidr_blocks = "0.0.0.0/0"
    }
  ]

  tags = {
    Name = "public-sg"
  }
}