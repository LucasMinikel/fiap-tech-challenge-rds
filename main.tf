module "rds" {
  source  = "./modules/rds"
  db_name = var.db_name
}

module "secrets" {
  source      = "./modules/sm"
  db_host     = module.rds.db_host
  db_port     = module.rds.db_port
  db_name     = var.db_name
  db_username = module.rds.db_username
  db_password = module.rds.db_password
}