module "public_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

    depends_on = [ module.vpc ]

  instance_type = "t3.micro"
  key_name      = "ec2key"
  monitoring    = true
  subnet_id     = module.vpc.public_subnets[0]
  ami           = "ami-00ca32bbc84273381"
  user_data = file("${path.module}/install_nginx.sh")
  vpc_security_group_ids = [module.public_security-group.security_group_id]
  #user_data = file("${path.module}/install_nginx.sh")
    tags = {
        Name = "BastionHost"
    }
}
