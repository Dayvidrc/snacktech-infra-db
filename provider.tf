terraform {
  backend "s3" {
    bucket = "snacktech-backend-tfstate"
    key    = "rds/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.regionDefault
}