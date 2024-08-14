resource "aws_ecs_task_definition" "ecs_task_definition" {
  family                = var.task_family
  network_mode = var.network_mode
  requires_compatibilities = ["FARGATE"]
  cpu = var.fargate_cpu
  memory = var.fargate_memory
  execution_role_arn = var.execution_role_arn
  container_definitions = jsonencode([
    {
      name = var.container_name
      image = var.image
      cpu = var.fargate_cpu
      memory = var.fargate_memory
      essential = true
      portMappings = [
        {
          containerPort = var.container_port
          hostPort      = var.container_port
          protocol      = var.container_protocol
        }
      ]
      logConfiguration = {
        logDriver = "awslogs",
        options = {
          "awslogs-create-group": "true",
          "awslogs-group"         = var.cloud_watch_name,
          "awslogs-region"        = "us-east-1",
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])
  runtime_platform {
    operating_system_family = "LINUX"
    cpu_architecture        = "X86_64"
  }
}