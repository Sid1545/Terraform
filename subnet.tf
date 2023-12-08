resource "aws_subnet" "terraform1" {
  vpc_id = aws_vpc.terraform.id
  cidr_block = "13.0.1.0/24"

  tags = {
    Name = "terraform1"
  }
} 

resource "aws_subnet" "terraform2" {
  vpc_id = aws_vpc.terraform.id
  cidr_block = "13.0.2.0/24"
  availability_zone = "us-east-1b"
 
  tags = {
    Name = "terraform2"
  }
}
