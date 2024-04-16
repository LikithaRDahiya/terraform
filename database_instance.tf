resource "aws_instance" "dbInstance" {
  ami                    = "ami-0451f2687182e0411"  # Use the AMI ID for your database instance
  instance_type          = "t2.micro"
  key_name               = "docker"
 count = "1"
  subnet_id              = aws_subnet.private_subnet.id
 security_groups            = [aws_security_group.instance_sg.id]
 tags = {
  Name = "dbInstance"
 }
}
