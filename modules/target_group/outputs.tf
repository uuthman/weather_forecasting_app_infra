output "target_group_id" {
  description = "The id for the target group"
  value = aws_lb_target_group.ecs_target_group.id
}


output "target_group_arn" {
  description = "The arn for the target group"
  value = aws_lb_target_group.ecs_target_group.arn
}

