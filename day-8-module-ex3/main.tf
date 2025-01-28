module "test" {
    source = "../day-8-module-ex2"
    ami_id ="ami-01816d07b1128cd2d"
    instance_type = "t2.micro"
    key_name = "newkey"

  
}