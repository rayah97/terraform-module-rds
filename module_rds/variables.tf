variable "aws_region" {
  description = "The AWS region in which to create the resources."
  type        = string
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "vpc_name" {
  description = "The name for the VPC."
  type        = string
}

variable "subnet_cidr_block_1" {
  description = "The CIDR block for the first subnet."
  type        = string
}

variable "subnet_name_1" {
  description = "The name for the first subnet."
  type        = string
}

variable "subnet_cidr_block_2" {
  description = "The CIDR block for the second subnet."
  type        = string
}

variable "subnet_name_2" {
  description = "The name for the second subnet."
  type        = string
}

variable "security_group_ingress_port" {
  description = "The port to use for ingress traffic to the security group."
  type        = number
}

variable "security_group_ingress_cidr" {
  description = "The CIDR block to allow ingress traffic to the security group."
  type        = string
}

variable "rds_allocated_storage" {
  description = "The amount of storage to allocate for the RDS instance, in GB."
  type        = number
}

variable "rds_engine" {
  description = "The database engine to use for the RDS instance."
  type        = string
}

variable "rds_engine_version" {
  description = "The version of the database engine to use for the RDS instance."
  type        = string
}

variable "rds_instance_class" {
  description = "The instance class to use for the RDS instance."
  type        = string
}

variable "rds_name" {
  description = "The name for the RDS instance."
  type        = string
}

variable "rds_username" {
  description = "The username to use for the RDS instance."
  type        = string
}

variable "rds_password" {
  description = "The password to use for the RDS instance."
  type        = string
}

variable "rds_db_subnet_group_name" {
  description = "The name for the RDS database subnet group."
  type        = string
}

variable "rds_skip_final_snapshot" {
  description = "Whether to skip taking a final snapshot of the RDS instance when it is deleted."
  type        = bool
}

variable "rds_backup_retention_period" {
  description = "The number of days to retain backups of the RDS instance."
  type        = number
}

variable "rds_backup_window" {
  description = "The time window during which backups of the RDS instance will be taken."
  type        = string
}
