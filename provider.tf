provider "aws" {}

terraform {
  backend "s3" {
    bucket = "ravi-state"
    key = "tool/terraform.tfstate"
    region = "us-east-1"

  }
}