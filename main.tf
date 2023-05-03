resource "aws_db_instance" "default" {
  allocated_storage     = 10
  max_allocated_storage = 20
  port                  = 5432
  multi_az              = false
  db_name               = "mydb"
  engine                = "postgres"
  engine_version        = "15.2"
  instance_class        = "db.t3.micro"
  username              = "postgresql"
  password              = "Manju230"
  skip_final_snapshot   = true
  #final_snapshot_identifier = "test"
  deletion_protection     = false
  availability_zone       = "ap-south-1a"
  backup_retention_period = 0
  maintenance_window      = "Mon:00:00-Mon:03:00"  

  tags = {
    name = "mydb"
  }
}

###########################################################################################
