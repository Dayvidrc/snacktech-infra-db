resource "aws_db_instance" "development_instance" {
  allocated_storage = 20
  storage_type      = "gp2"
  engine            = "sqlserver-ex"
  engine_version    = "15.00.4410.1.v1"
  instance_class    = "db.t3.small"
  identifier        = "${var.projectName}-db"
  username          = var.dbUserName
  password          = var.dbPassword
  apply_immediately = true

  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  db_subnet_group_name   = aws_db_subnet_group.snack_tech_db_subnet_group.name

  backup_retention_period  = 1                     # Number of days to retain automated backups
  backup_window            = "03:00-04:00"         # Preferred UTC backup window (hh24:mi-hh24:mi format)
  maintenance_window       = "mon:04:00-mon:04:30" # Preferred UTC maintenance window
  copy_tags_to_snapshot    = true
  delete_automated_backups = true

  # Enable automated backups
  skip_final_snapshot       = false
  final_snapshot_identifier = "db-snap"
  publicly_accessible       = true
  deletion_protection       = false #Em produção mudar aqui para true

  # Enable enhanced monitoring - Não fnciona para role LabBuilder
  #monitoring_interval = 60 # Interval in seconds (minimum 60 seconds)
  #monitoring_role_arn = data.aws_iam_role.labrole.arn

  # Enable performance insights
  #performance_insights_enabled = true
}