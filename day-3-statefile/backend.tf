terraform {
  backend "s3" {
    bucket = "mudakir-bucket"
    key = "terraform.tfstate"
    region = "us-east-1"
    
  }
}