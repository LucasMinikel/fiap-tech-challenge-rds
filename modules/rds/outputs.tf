output "db_host" {
  value       = aws_db_instance.default.address
}

output "db_port" {
  value       = aws_db_instance.default.port
}

output "db_username" {
  value       = random_string.db_username.result
}

output "db_password" {
  value       = random_password.db_password.result
}