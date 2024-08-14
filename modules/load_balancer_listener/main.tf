resource "aws_lb_listener" "ecs_alb_listener" {
  load_balancer_arn = var.alb_id
  port = var.listener_port
  protocol = var.listener_protocol
  default_action {
    type = "forward"
    target_group_arn = var.target_group_id
  }
}