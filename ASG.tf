# Auto Scaling Group
resource "aws_autoscaling_group" "ec2_asg" {
  name                = "Project-Fusion-web-server-asg"
  desired_capacity    = 2
  min_size            = 2
  max_size            = 3
  target_group_arns   = [aws_lb_target_group.alb_ec2_tg.arn]
  vpc_zone_identifier = aws_subnet.private_subnet[*].id

  launch_template {
    id      = aws_launch_template.ec2_launch_template.id
    version = "$Latest"
  }

  health_check_type = "EC2"
}

output "alb_dns_name" {
  value = aws_lb.app_lb.dns_name
}