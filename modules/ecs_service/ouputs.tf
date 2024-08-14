output "service_name" {
  description = "The name of the service"
  value =  aws_ecs_service.main.name
}