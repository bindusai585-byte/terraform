output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
  
}
output "vpc_cidr" {
  description = "value of the VPC CIDR"
  value       = var.vpc_cidr
}
output "public_subnets" {
  description = "List of public subnet IDs"
  value       = module.vpc.public_subnets
}
output "private_subnets" {
  description = "List of private subnet IDs"
  value       = module.vpc.private_subnets
}
output "region" {
  description = "The AWS region to deploy resources in"
  value       = var.region
}
