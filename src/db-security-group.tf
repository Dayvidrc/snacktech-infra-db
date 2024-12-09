resource "aws_security_group" "rds_sg" {
  name_prefix = "rds-"
  description = "Security group to allow public access to RDS SQL Server"

  # Add any additional ingress/egress rules as needed
  ingress {
    from_port   = 1433
    to_port     = 1433
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}