resource "aws_lb_target_group" "ecs_target_group" {
  name = "ecs-target-group"
  port = var.target_group_port
  protocol = var.target_group_protocol
  target_type = "ip"
  vpc_id = var.vpc_id

  health_check {
    healthy_threshold   = "5"
    interval            = "30"
    protocol            = "HTTP"
    matcher             = "200"
    timeout             = "5"
    path                = "/health"
    unhealthy_threshold = "2"
  }

  depends_on = [var.depends_on_alb]
}