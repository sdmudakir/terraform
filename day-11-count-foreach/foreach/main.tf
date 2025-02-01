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
  default = ["dev","prod"]
}

# main.tf
resource "aws_instance" "sandboxes"{
  ami           = var.ami
  instance_type = var.instance_type
 # count         = length(var.sandboxes)
for_each = toset(var.sandboxes)
 tags = {
    Name = each.value
}
}