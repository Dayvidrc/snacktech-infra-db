resource "aws_db_subnet_group" "snack_tech_db_subnet_group" {
  name        = "${var.projectName}-db-subnet-group"
  description = "Subnet group for RDS instance"

  subnet_ids = ["${data.aws_subnet.subnet01.id}", "${data.aws_subnet.subnet02.id}"]

  tags = {
    Name = "My DB Subnet Group"
  }
}