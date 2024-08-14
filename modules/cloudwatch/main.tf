resource "aws_cloudwatch_metric_alarm" "high_cpu" {
  alarm_name          = "HighCPUUtilizationAlarm"
  comparison_operator = var.high_comparison_operator
  evaluation_periods  = var.metric_alarm_evaluation_periods
  metric_name = var.metric_name
  namespace = var.metric_alarm_namespace
  period = var.metric_alarm_period
  statistic = var.statistic
  threshold = var.high_threshold
  alarm_actions = [var.high_cpu_arn]

  actions_enabled = true

  dimensions = {
    ClusterName = var.cluster_name
    ServiceName = var.service_name
  }
}

resource "aws_cloudwatch_metric_alarm" "low_cpu" {
  alarm_name          = "LowCPUUtilizationAlarm"
  comparison_operator = var.low_comparison_operator
  evaluation_periods  = var.metric_alarm_evaluation_periods
  metric_name = var.metric_name
  namespace = var.metric_alarm_namespace
  period = var.metric_alarm_period
  statistic = var.statistic
  threshold = var.low_threshold
  alarm_actions = [var.low_cpu_arn]

  actions_enabled = true

  dimensions = {
    ClusterName = var.cluster_name
    ServiceName = var.service_name
  }
}