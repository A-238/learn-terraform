# ----------------------------------------------
# Terraform Config
# ----------------------------------------------
terraform {
  required_version = "1.6.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.24.0"
    }
  }
}

# ----------------------------------------------
# Provider
# ----------------------------------------------
provider "aws" {
  region = "ap-northeast-1"
}

# ----------------------------------------------
# Variables
# ----------------------------------------------
variable "project" {
  type = string
}

variable "environment" {
  type = string
}