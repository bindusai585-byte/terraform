variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}
variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}
variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}
variable "vpc_private_subnets" {
  description = "List of private subnet CIDRs"
  type        = list(string)
}
variable "vpc_public_subnets" {
  description = "List of public subnet CIDRs"
  type        = list(string)
}