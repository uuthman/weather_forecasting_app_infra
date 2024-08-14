resource "aws_appautoscaling_policy" "scale_out" {
  name               = "scale-out"
  resource_id        = var.resource_id
  scalable_dimension = var.scalable_dimension
  service_namespace  = var.service_namespace
  policy_type = "StepScaling"

  step_scaling_policy_configuration {
    adjustment_type         = var.adjustment_type
    cooldown                = var.cooldown
    metric_aggregation_type = var.metric_aggregation_type

    step_adjustment {
      scaling_adjustment = 1
      metric_interval_upper_bound = 0
    }
  }
}

resource "aws_appautoscaling_policy" "scale_in" {
  name               = "scale-in"
  resource_id        = var.resource_id
  scalable_dimension = var.scalable_dimension
  service_namespace  = var.service_namespace
  policy_type = "StepScaling"

  step_scaling_policy_configuration {
    adjustment_type         = var.adjustment_type
    cooldown                = var.cooldown
    metric_aggregation_type = var.metric_aggregation_type

    step_adjustment {
      scaling_adjustment = -1
      metric_interval_upper_bound = 0
    }
  }
}