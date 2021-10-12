terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.62.0"
    }
  }
}

provider "aws" {
  # Configuration options
  profile = "default"
  region  = "af-south-1"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

resource "aws_instance" "test_server" {
  ami           = "ami-0cf6249186288c4f0"
  instance_type = var.instance_type

}
