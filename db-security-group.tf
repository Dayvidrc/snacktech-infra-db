resource "aws_security_group" "rds_sg" {
  name_prefix = "rds-"

  # Add any additional ingress/egress rules as needed
  ingress {
    from_port   = 1433
    to_port     = 1433
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

