
# Create Vpc 
resource "aws_vpc" "MyVPC" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Gfakx-Vpc"
  }
}

#Creates a Public Subnet were Ec2 Instance would be provisioned
resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.MyVPC.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true #creates public ip address to instances lauched in the subnet 
  tags = {
    "Name" = "GfakxPublicSubnet"
  }

}
