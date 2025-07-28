provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "demo" {
    ami = "ami-08a6efd148b1f7504"
    instance_type = "t3.micro"
    key_name = "Udemy-Project-key"
  
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow ssh"

  tags = {
    Name = "allow_ssh"
  }
}

resource "aws_security_group" "sg_ssh" {

  ingress  {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]

  }
tags = {
    Name = "allow_ssh"
  }
}  