terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "ec2_1" {
  ami           = "ami-0aaa636894689fa47"
  instance_type = "t3.micro"

  tags = {
    Name = "First-Instance"
  }
}

resource "aws_instance" "ec2_2" {
  ami           = "ami-0aaa636894689fa47"
  instance_type = "t3.micro"

  tags = {
    Name = "Second-Instance"
  }
}
