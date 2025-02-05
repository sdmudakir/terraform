resource "aws_instance" "test" {
    ami = "ami-0c614dee691cbbf37"
    key_name = "devops"
    instance_type = "t2.micro"
    
    tags = {
      Name = "test"
  
    }
}