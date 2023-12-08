resource "aws_instance" "t7" {
  ami = "ami-0fa1ca9559f1892ec"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.terraform1.id
  key_name = "sid"
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.terraform.id]
  user_data = (file("sid.sh"))
  tags = {
    Name = "t7"
  }
}

resource "aws_instance" "t8" {
  ami = "ami-0fa1ca9559f1892ec"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.terraform2.id
  key_name = "sid"
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.terraform.id]
  user_data = "${file("sidd.sh")}"
  tags = {
    Name = "t8"
  }
}

