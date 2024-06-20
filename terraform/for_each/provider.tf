terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.50.0"
    }
  }
  backend "s3" {
    bucket = "devopspractice-remote-state"
    key    = "remote-state-demo1"
    region = "us-east-1"
    dynamodb_table = "remote-data-lock"
  }
}
#provide authentication here
provider "aws" {
  region = "us-east-1"
}