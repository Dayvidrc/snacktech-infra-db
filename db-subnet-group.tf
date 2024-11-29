resource "aws_db_subnet_group" "snack_tech_db_subnet_group" {
  name       = "${var.projectName}-db-subnet-group"
  subnet_ids = ["${var.subnet01}", "${var.subnet02}"]

  tags = {
    Name = "My DB Subnet Group"
  }
}