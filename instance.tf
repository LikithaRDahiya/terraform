resource "aws_instance" "instance1" {
 ami                = "ami-0451f2687182e0411"
 instance_type      = "t2.micro"
 key_name           = "docker"
 count              = "1"
 subnet_id          = aws_subnet.public_subnet.id
security_groups            = [aws_security_group.instance_sg.id]
 tags = {
   Name = "terraform1"
}
}
