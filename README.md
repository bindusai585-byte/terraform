step1: create vpc
Created a VPC with 3Az's
Added subnets public and private, igw, NAT gateway
step2- create security group
Add the security group to the public and private security add the required rules
step3: create ec2 instances
create ec2 bastion host in public subnet in one of the AZ and attach the public security group
create the ec2 instances in provate subnet in all AZ and attched the provate subnet
step4:
update the security group rules for inbound(ssh and http) and outbound(all traffic)in public subnet
update the security group rules for inbound(ssh) and outbound(all) in private subnet
