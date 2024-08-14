resource "aws_ecs_service" "main" {
  name = var.ecs_service_name
  cluster = var.cluster_id
  task_definition = var.task_definition_arn
  desired_count = var.desired_count
  launch_type = "FARGATE"


  network_configuration {
    subnets = [var.subnet_id, var.subnet_2_id]
    security_groups = [var.ecs_security_group_id]
    assign_public_ip = true
  }

  load_balancer {
    target_group_arn = var.target_group_arn
    container_name = var.container_name
    container_port = var.container_port
  }

}