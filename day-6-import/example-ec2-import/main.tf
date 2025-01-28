resource "aws_instance" "name" {
    ami = "ami-0fd05997b4dff7aac"
    instance_type = "t2.nano"
    key_name = "mykeymumbai"
    tags = {
      Name = "dev"
    }
}

#import --> terraform import aws_instance .name <instance_id>