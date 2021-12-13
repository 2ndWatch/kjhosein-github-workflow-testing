
# AWS Region where this application will be deployed:
variable "aws_region" {}
# variable "aws_profile" {}

provider "aws" {
  region = var.aws_region
  # profile = var.aws_profile
}


terraform {
  # required_version = ">= 0.13.5, < 0.14.0"
  required_version = "~> 0.13.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.50.0, < 4.0.0"
    }
  }

  backend "s3" {
    bucket  = "kjh-test-bucket-tagging"
    key     = "terraform/tf-s3-object.state"
    region  = "us-east-1"
    profile = "kjh"
  }
}
