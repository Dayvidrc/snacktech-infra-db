terraform {
  backend "s3" {
    bucket = "snack-tech-backend-tf"
    key    = "rds-backend/terraform.tfstate"
    region = "us-east-1"
  }
}