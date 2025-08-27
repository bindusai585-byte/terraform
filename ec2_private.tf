module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  
  name = "PrivateInstance"
    depends_on = [ module.vpc ]

  instance_type = "t3.micro"
  key_name      = "ec2key"
  monitoring    = true
  ami           = "ami-00ca32bbc84273381"
  #user_data = file("${path.module}/install_nginx.sh")
  vpc_security_group_ids = [module.private_security-group.security_group_id]
    #count         = length(var.vpc_private_subnets)
    for_each = toset(["0", "1", "2" ])
    subnet_id = element(module.vpc.private_subnets, tonumber(each.value))
#subnet_id = module.vpc.private_subnets[count.index]
    tags = {
        Name = "PrivateInstance"
    }

}
