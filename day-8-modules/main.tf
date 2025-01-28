module "dev" {
    source = "../day-1-basic-code"
    ami_id = "ami-01816d07b1128cd2d"
    type = "t2.micro"
    keyname ="newkey"
    
}