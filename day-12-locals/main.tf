provider "aws" {
  profile = "syed"
  region = "us-east-1"
  key_name = "devops"
}

locals {
  region = "us-east-1"
  environment = "dev"
  instance_type = {dev="t2.micro" test="t2.nano"}
  ami = "ami-05576a079321f21f8"
}

resource "aws_instance" "example" {
  ami           = local.ami # Amazon Linux 2 AMI
  instance_type = local.instance_type.test
  key_name = local.key_name

  tags = {
    Name        = "ExampleInstance"
    Environment = local.environment
  }
}

