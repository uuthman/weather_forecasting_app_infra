resource "aws_iam_role_policy_attachment" "ecs_task_execution_role_policy" {
  role       = var.role_name
  policy_arn = var.policy_arn
}
