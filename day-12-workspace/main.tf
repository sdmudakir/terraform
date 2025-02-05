provider "aws" {
  profile = "syed"
  region = "us-east-1"
}

resource "aws_instance" "test11" {
    ami = "ami-0c614dee691cbbf37"
    key_name = "Multicloud"
    instance_type = "t2.nano"
    
    tags = {
      Name = "test11"
    }
  
}
    

 