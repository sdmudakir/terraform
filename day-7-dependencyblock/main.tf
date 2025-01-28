resource "aws_instance" "dependent" {
    ami = "ami-0ec0e125bb6c6e8ec"
    instance_type = "t2.micro"
    key_name = "aws_key"
}

resource "aws_s3_bucket" "dependent" {
    bucket = "ytvhshfbbc" 
    depends_on = [ aws_instance.dependent ]
}

