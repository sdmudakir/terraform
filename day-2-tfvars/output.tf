output "privateip" {
  value     = aws_instance.dev.private_ip
  sensitive = true
}
output "publicip" {
  value = aws_instance.dev.public_ip

}
output "id" {
  value = aws_instance.dev.id
}
output "ami" {
  value = aws_instance.dev.ami
}