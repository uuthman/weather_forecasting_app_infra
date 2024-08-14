resource "aws_appautoscaling_target" "target" {
  resource_id        = "service/${var.cluster_name}/${var.service_name}"
  scalable_dimension = "ecs:service:DesiredCount"
  service_namespace  = var.service_namespace
  max_capacity       = var.max_capacity
  min_capacity       = var.min_capacity
}