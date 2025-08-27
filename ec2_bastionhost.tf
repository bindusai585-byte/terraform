module "public_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

    depends_on = [ module.vpc ]

  instance_type = "t3.micro"
  key_name      = "user1"
  monitoring    = true
  subnet_id     = module.vpc.public_subnets[0]
  ami           = "ami-0c55b159cbfafe1f0"

    tags = {
        Name = "BastionHost"
    }
}