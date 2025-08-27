module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  
  name = "PrivateInstance"
    depends_on = [ module.vpc ]

  instance_type = "t3.micro"
  key_name      = "user1"
  monitoring    = true
  ami           = "ami-0c55b159cbfafe1f0"
    #count         = length(var.vpc_private_subnets)
    for_each = toset(["0", "1", "2" ])
    subnet_id = element(module.vpc.private_subnets, tonumber(each.value))
#subnet_id = module.vpc.private_subnets[count.index]
    tags = {
        Name = "PrivateInstance"
    }

}