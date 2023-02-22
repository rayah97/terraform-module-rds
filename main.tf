provider "aws" {
  region = "us-east-1"
}

module "rds_db" {
  source = "./module_rds"

  vpc_cidr_block            = "10.0.0.0/16"
  vpc_name                  = "rds-vpc"
  subnet_cidr_block_1       = "10.0.1.0/24"
  subnet_name_1             = "rds-subnet-1"
  subnet_cidr_block_2       = "10.0.2.0/24"
  subnet_name_2             = "rds-subnet-2"
  security_group_ingress_port   = 3306
  security_group_ingress_cidr   = "0.0.0.0/0"
  rds_allocated_storage     = 20
  rds_engine                = "mysql"
  rds_engine_version        = "5.7"
  rds_instance_class        = "db.t2.micro"
  rds_name                  = "my-rds-db"
  rds_username              = "admin"
  rds_password              = "mysecretpassword"
  rds_db_subnet_group_name  = "my-db-subnet-group"
  rds_skip_final_snapshot   = true
  rds_backup_retention_period = 7
  rds_backup_window = "02:00-03:00"
}


