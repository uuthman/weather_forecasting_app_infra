output "task_definition_arn" {
  description = "The arn for the task definition"
  value = aws_ecs_task_definition.ecs_task_definition.arn
}