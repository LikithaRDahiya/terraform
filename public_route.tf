resource "aws_route_table" "public_route_table" {
 vpc_id = aws_vpc.my_vpc.id
route_table_id         = aws_vpc.my_vpc.main_route_table_id
 route {
  cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.igw.id
 }
 tags = {
  Name = "PublicRouteTable"
 }
}
