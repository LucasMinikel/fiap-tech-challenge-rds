resource "aws_secretsmanager_secret" "db_secrets_rds_mysql" {
  name = "db_secrets_rds_mysql"
  recovery_window_in_days = 0 
  force_overwrite_replica_secret = true
}

resource "aws_secretsmanager_secret_version" "db_secrets_rds_mysql" {
  secret_id = aws_secretsmanager_secret.db_secrets_rds_mysql.id
  secret_string = jsonencode({
    DB_HOST     = var.db_host
    DB_PORT     = var.db_port
    DB_DATABASE = var.db_name
    DB_USERNAME = var.db_username
    DB_PASSWORD = var.db_password
  })
}