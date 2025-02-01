provider "aws" {
  profile = "syed"
  region = "us-east-1"
}

# resource "aws_instance" "name" {
#     ami = "ami-0c614dee691cbbf37"
#     key_name = "devops"
#     instance_type = "t2.micro"
#     count = 2
#     # tags = {
#     #   Name = "test"
#     # }
#     # tags = {
    #   Name ="test-${count.index}"
    # }
# example-2 with variables list of string 

variable "ami" {
  type    = string
  default = "ami-05576a079321f21f8"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "sandboxes" {
  type    = list(string)
  default = [ "dev", "prod"]
}
# main.tf
resource "aws_instance" "sandboxes"{
  ami           = var.ami
  instance_type = var.instance_type
  count         = length(var.sandboxes)

 tags = {
    Name = var.sandboxes[count.index]
  }
}

#example-3 creating IAM users 
# variable "user_names" {
#   description = "IAM usernames"
#   type        = list(string)
#   default     = ["user1", "user2", "user3"]
# }
# resource "aws_iam_user" "example" {
#   count = length(var.user_names)
#   name  = var.user_names[count.index]
# }


# example-4 with numeric condition in thid condition if ec2 instance = t2.micro only instance will create(count = var.instance_type == "t2.micro" ? 1 : 0) but i am passing t2.nano so ec2 will not create
# variables.tf
# variable "ami" {
#   type    = string
#   default = "ami-0230bd60aa48260c6"
# }

# variable "instance_type" {
#   type = string
#   default = "t2.nano"
# }

# # main.tf
# resource "aws_instance" "dev" {
#   ami           = var.ami
#   instance_type = var.instance_type
#   count         = var.instance_type == "t2.micro" ? 1 : 0
#   tags = {
#     Name = "dev_server"
#   }
# }
  
