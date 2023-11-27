
#defining terraform provider
provider "aws" {
    region = "us-east-1"
  
}

#starting with simple ec2 instance creation
# resource "aws_instance" "terraform1" {

#     ami = "ami-0230bd60aa48260c6"
#     instance_type = "t2.micro"
#     tags = {
#       Name = "terraform1"
#       create_by = "Nilesh"
#     }
#     key_name = "mykey"
  
# }

# #creating vpc
# resource "aws_vpc" "terraformvpc" {
#     cidr_block = "10.245.0.0/16"
#     tags = {
#       Name = "terraform vpc"
#     } 
# }

# #creating subnet and geting vpc id from above vp
# resource "aws_subnet" "subnet1" {
  
#   vpc_id = aws_vpc.terraformvpc.id
#   cidr_block = "10.245.1.0/24"
#   tags = {
#     Name = "Subnet1"
#   }
# }

# resource "aws_subnet" "subnet2" {
  
#   vpc_id = aws_vpc.terraformvpc.id
#   cidr_block = "10.245.10.0/24"
#   map_public_ip_on_launch = true
  
#   tags = {
#     Name = "Subnet2"
#   }
# }

# #creating ec2 insatnce in created vpc and subnet

# #by default it will not assign public ip
# resource "aws_instance" "terraforminstance1" {

#     ami = "ami-0230bd60aa48260c6"
#     instance_type = "t2.micro"
#     subnet_id = aws_subnet.subnet1.id
    
#     key_name = "mykey"
#     tags = {
#       Name = "Terraform1"
#       Subnet = "subnet1"
#     } 
# }

# #by default public ip will be assigned
# resource "aws_instance" "terraforminstance2" {

#     ami = "ami-0230bd60aa48260c6"
#     instance_type = "t2.micro"
#     subnet_id = aws_subnet.subnet2.id
    
#     key_name = "mykey"
#     tags = {
#       Name = "Terraform2"
#       Subnet = "subnet2"
#     } 
# }

