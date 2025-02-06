terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">5.0, <6.0"
    }
  }
}

resource "aws_instance" "dev" {
    ami = "ami-0c614dee691cbbf37"
    instance_type = "t2.nano"
    key_name = "Multicloud"
    tags = {
      Name = "dev123"
    }
}
