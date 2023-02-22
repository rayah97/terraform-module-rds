provider "aws" {
  region = var.aws_region
}

resource "aws_vpc" "rds_vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "rds_subnet_1" {
  cidr_block = var.subnet_cidr_block_1
  vpc_id     = aws_vpc.rds_vpc.id
  tags = {
    Name = var.subnet_name_1
  }
}

resource "aws_subnet" "rds_subnet_2" {
  cidr_block = var.subnet_cidr_block_2
  vpc_id     = aws_vpc.rds_vpc.id
  tags = {
    Name = var.subnet_name_2
  }
}

# Create a security group for the RDS instance
resource "aws_security_group" "rds_security_group" {
  name_prefix = "rds_security_group"
  vpc_id      = aws_vpc.rds_vpc.id

  ingress {
    from_port   = var.security_group_ingress_port
    to_port     = var.security_group_ingress_port
    protocol    = "tcp"
    cidr_blocks = [var.security_group_ingress_cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "rds_security_group"
  }
}

# Create an RDS instance
resource "aws_db_instance" "rds_instance" {
  allocated_storage    = var.rds_allocated_storage
  engine               = var.rds_engine
  engine_version       = var.rds_engine_version
  instance_class       = var.rds_instance_class
  name                 = var.rds_name
  username             = var.rds_username
  password             = var.rds_password
  db_subnet_group_name = var.rds_db_subnet_group_name
  vpc_security_group_ids = [aws_security_group.rds_security_group.id]
  skip_final_snapshot = var.rds_skip_final_snapshot

  # Enable backups
  backup_retention_period = var.rds_backup_retention_period
  backup_window           = var.rds_backup_window

  # Configure the database to use the created subnets
  subnet_group {
    name = var.rds_db_subnet_group_name

    subnet_ids = [
      aws_subnet.rds_subnet_1.id,
      aws_subnet.rds_subnet_2.id
    ]
  }

  tags = {
    Name = var.rds_name
  }
}


