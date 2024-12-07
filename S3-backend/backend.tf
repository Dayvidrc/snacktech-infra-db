terraform {
  backend "s3" {
    bucket = "snack-tech-backend-tf"
    key    = "s3-backend/terraform.tfstate"
    region = "us-east-1"
  }
}