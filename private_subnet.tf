resource "aws_subnet" "private_subnet" {
 vpc_id            = aws_vpc.my_vpc.id
 cidr_block        = "10.0.0.128/25"
 availability_zone = "ap-south-1a"
 tags = {
  Name = "PrivateSubnet"
 }
}
