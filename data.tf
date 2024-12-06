data "aws_iam_role" "labrole" {
  name = "LabRole"
}

data "aws_subnet" "subnet01" {
  cidr_block = var.subnet01Cidr
}

data "aws_subnet" "subnet02" {
  cidr_block = var.subnet02Cidr
}
