output "ecs_alb_id" {
  description = "The load balancer id for the ecs alb"
  value = aws_lb.ecs_load_balancer.id
}

output "ecs_alb_arn" {
  description = "The load balancer arn for the ecs alb"
  value = aws_lb.ecs_load_balancer.arn
}

output "ecs_alb_dns_name" {
  value = aws_lb.ecs_load_balancer.dns_name
}