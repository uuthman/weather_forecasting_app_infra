output "scale_out_arn" {
  description = "The scale out policy arn"
  value = aws_appautoscaling_policy.scale_out.arn
}

output "scale_in_arn" {
  description = "The scale in policy arn"
  value = aws_appautoscaling_policy.scale_in.arn
}