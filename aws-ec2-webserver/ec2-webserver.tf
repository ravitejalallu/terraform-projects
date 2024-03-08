terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "foo" {
  ami           = "ami-07d9b9ddc6cd8dd30" # us-east-1
  instance_type = "t2.micro"
  user_data     = file("${path.module}/app.sh")
  tags = {
    "Name" = "web server"
      }
}
