resource "aws_internet_gateway" "terraform" {
  vpc_id = aws_vpc.terraform.id

  tags = {
    Name = "terraform"
  }
}
