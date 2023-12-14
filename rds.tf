resource "aws_db_subnet_group" "default" {
  name       = "dbsub"
  subnet_ids = [aws_subnet.abc1.id, aws_subnet.abc2.id]

  tags = {
    Name = "My DB subnet group"
  }
}

resource "aws_db_instance" "db" {
  allocated_storage    = 20
  db_name              = "mydb"
  db_subnet_group_name = "dbsub"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.medium"
  username             = "admin"
  password             = "admin123"
}

