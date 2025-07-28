provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "demo" {
    ami = ""
    instance_type = "t3.micro"
    key_name = "devops-keys"
  
}