variable "ami_id" {
  description = "inserting ami value to main.tf"
  type = string
  default = "ami-05576a079321f21f8"

}
variable "type" {
  type = string
  default = "t2.nano"
}
variable "keyname" {
  type = string
  default = "devops"
}