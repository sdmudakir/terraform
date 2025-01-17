resource "aws_instance" "dev1" {
ami = "ami-05576a079321f21f8"
  instance_type = "t2.micro"
  key_name = "devops"
  availability_zone = "us-east-1b"
  tags = {
  Name = "dev1"
  }
}
  