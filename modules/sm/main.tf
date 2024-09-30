resource "aws_secretsmanager_secret" "db_secrets" {
  name = "db_rds_secrets"
}

resource "aws_secretsmanager_secret_version" "db_secrets" {
  secret_id = aws_secretsmanager_secret.db_secrets.id
  secret_string = jsonencode({
    DB_HOST     = var.db_host
    DB_PORT     = var.db_port
    DB_DATABASE = var.db_name
    DB_USERNAME = var.db_username
    DB_PASSWORD = var.db_password
  })
}