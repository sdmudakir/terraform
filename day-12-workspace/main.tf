provider "aws" {
  profile = "syed"
  region = "us-east-1"
}

resource "aws_instance" "test11" {
    ami = "ami-05576a079321f21f8"
    key_name = "devops"
    instance_type = "t2.nano"
    
    tags = {
      Name = "test11"
    }
  
}
    

 