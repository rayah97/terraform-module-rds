variable "aws_region" {
  type    = string
  default = "us-west-2"
}

variable "vpc_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "vpc_name" {
  type    = string
  default = "my-vpc"
}

variable "subnet_cidr_block_1" {
  type    = string
  default = "10.0.1.0/24"
}

variable "subnet_cidr_block_2" {
  type    = string
  default = "10.0.2.0/24"
}

variable "subnet_name_1" {
  type    = string
  default = "my-subnet-1"
}

variable "subnet_name_2" {
  type    = string
  default = "my-subnet-2"
}

variable "security_group_ingress_port" {
  type    = number
  default = 3306
}

variable "security_group_ingress_cidr" {
  type    = string
  default = "0.0.0.0/0"
}

variable "rds_allocated_storage" {
  type    = number
  default = 10
}

variable "rds_engine" {
  type    = string
  default = "mysql"
}

variable "rds_engine_version" {
  type    = string
  default = "5.7"
}

variable "rds_instance_class" {
  type    = string
  default = "db.t2.micro"
}

variable "rds_name" {
  type    = string
  default = "my-rds-instance"
}

variable "rds_username" {
  type    = string
  default = "myuser"
}

variable "rds_password" {
  type    = string
  default = "mypassword"
}

variable "rds_db_subnet_group_name" {
  type    = string
  default = "my-db-subnet-group"
}

variable "rds_skip_final_snapshot" {
  type    = bool
  default = true
}

variable "rds_backup_retention_period" {
  type    = number
  default = 7
}

variable "rds_backup_window" {
  type    = string
  default = "03:00-04:00"
}
