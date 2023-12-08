resource "aws_lb" "terraform" {
  name               = "terraform"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.terraform.id]
  subnets            = [aws_subnet.terraform1.id, aws_subnet.terraform2.id]
}


resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.terraform.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.terraform.arn
  }
}
