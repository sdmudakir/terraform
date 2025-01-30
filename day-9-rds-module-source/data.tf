data "aws_subnet" "sub-1" {
  filter {
    name   = "tag:Name"
    values = ["sub-1"] # insert value here
  }
}
data "aws_subnet" "sub-2" {
  filter {
    name   = "tag:Name"
    values = ["sub-2"] # insert value here
  }
}