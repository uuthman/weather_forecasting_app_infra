output "resource_id" {
  description = "This is the resource id for auto scaling"
  value = aws_appautoscaling_target.target.resource_id
}

output "scalable_dimension" {
  description = "This is the scalable dimension for the auto scaling"
  value = aws_appautoscaling_target.target.scalable_dimension
}

