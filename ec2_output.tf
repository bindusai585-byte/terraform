output "ec2_bastion_public_ip" {
  value = module.public_instance.public_ip
  
}
output "ec2_bastion_instance_id" {
  value = module.public_instance.id
}
output "ec2_private_instance_id" {
  value = [for inst in module.ec2_instance : inst.id]
  
}
output "ec2_private_ip" {
  value = [for inst in module.ec2_instance : inst.private_ip]
  
}