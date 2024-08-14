resource "aws_lb" "ecs_load_balancer" {
  name = "ecs-alb"
  internal = false
  load_balancer_type = "application"
  security_groups = [var.vpc_security_group]
  subnets = [var.subnet_id, var.subnet_2_id]

  tags = {
    name = "ecs-alb"
  }

}