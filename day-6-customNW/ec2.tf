#Create Public Servers

resource "aws_instance" "dev_ec2" {
    ami = "ami-05576a079321f21f8"
  instance_type = "t2.micro"
  key_name = "devops"
  availability_zone = "us-east-1f"
  subnet_id = aws_subnet.public.id
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  tags = {
  Name = "dev_ec2"
  }
}

# Create private Server