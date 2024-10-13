# Launch Template for EC2 Instances
resource "aws_launch_template" "ec2_launch_template" {
  name = "Project-web-server"

  image_id      = "ami-013e83f579886baeb" //Copy the ami id from aws console
  instance_type = "t2.micro"

  network_interfaces {
    associate_public_ip_address = false
    security_groups             = [aws_security_group.ec2_sg.id]
  }

  user_data = filebase64("Nginx_Install.sh")

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "Project-Fusion-ec2-web-server"
    }
  }
}