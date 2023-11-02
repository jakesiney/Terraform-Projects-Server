terraform {

  cloud {
    organization = "cyberdyne-systems"
    workspaces {
      name = "tutorial-2"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"

}

provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "tutorial" {
  ami           = "ami-06ce6bb40e50efe77"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-example"
  }

}