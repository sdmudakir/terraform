module "prod" {
 #source = "github.com/CloudTechDevOps/terraform0730am/day-8-module-ex2" 
 ami_id = "ami-05576a079321f21f8"
    instance_type = "t2.micro"
    key_name = "devops"
   

}