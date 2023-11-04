terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.24.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "hello-world" {
    ami = "ami-098940df4d3292e9a"
    instance_type = "t2.micro"

    tags = {
        Name = "HalloWorld"
    }
}