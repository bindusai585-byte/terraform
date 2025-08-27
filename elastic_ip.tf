resource "aws_eip" "bastion_eip" {
    depends_on = [ module.vpc,module.public_instance ]
  instance = module.public_instance.id
  domain   = "vpc"
}