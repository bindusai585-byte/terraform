output "public_sg_id" {
  value = module.public_security-group.security_group_id
  
}
output "public_sg_name" {
  value = module.public_security-group.security_group_name

}
output "public_sg_vpc_id" {
    value = module.vpc.vpc_id
  
}
output "private_sg_id" {
  value = module.private_security-group.security_group_id
  
}
output "private_sg_name" {
  value = module.private_security-group.security_group_name
  
}
output "private_sg_vpc_id" {
  value = module.vpc.vpc_id
  
}