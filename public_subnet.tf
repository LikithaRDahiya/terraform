resource "aws_subnet" "public_subnet" {
 vpc_id          = aws_vpc.my_vpc.id
 cidr_block      = "10.0.0.0/25"
 availability_zone = "ap-south-1a"
 map_public_ip_on_launch = true
 tags ={
  Name = "PublicSubnet"
 }
}
