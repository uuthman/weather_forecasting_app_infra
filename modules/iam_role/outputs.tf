output "task_execution_role_arn" {
  description = "The arn for the role"
  value = aws_iam_role.ecs_task_execution_role.arn
}

output "task_execution_role_name" {
  description = "The name of the role"
  value = aws_iam_role.ecs_task_execution_role.name
}