resource "aws_launch_template" "linux_instance" {
  name          = "linux-instance-template"
  image_id      = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
}   

resource "aws_autoscaling_group" "abc" {
  name                      = "terraform-test"
  max_size                  = 5
  min_size                  = 2
  health_check_grace_period = 300
  health_check_type         = "ELB"
  desired_capacity          = 4
  force_delete              = true
  vpc_zone_identifier       = [aws_subnet.abc1.id, aws_subnet.abc2.id]

  launch_template {
    id      = aws_launch_template.linux_instance.id
    version = "$Latest"
  }
}
