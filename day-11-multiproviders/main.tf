provider "aws" {
  profile = "syed"
  region = "us-east-1" 
  alias = "abc"
}

provider "aws" {
profile = "syed"
region = "ap-south-1"

}

resource "aws_s3_bucket" "name" {
  bucket = "kyegerdffaaaaa"
  provider = aws.abc
}

resource "aws_s3_bucket" "aus" {
  bucket = "kyegerdff00000"
  
}