resource "aws_lb_target_group" "terraform" {
  name     = "terraform"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.terraform.id
}

resource "aws_lb_target_group_attachment" "terraform" {
  target_group_arn = aws_lb_target_group.terraform.arn
  target_id        = aws_instance.t7.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "terraform1" {
  target_group_arn = aws_lb_target_group.terraform.arn
  target_id        = aws_instance.t8.id
  port             = 80
}
