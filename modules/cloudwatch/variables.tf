variable "cluster_name" {
  description = "The name of the ecs cluster"
  type = string
}

variable "service_name" {
  description = "The name of the ecs service"
  type = string
}

variable "high_cpu_arn" {
  description = "The arn for high cpu auto scale policy"
  type = string
}

variable "low_cpu_arn" {
  description = "The arn for low cpu auto scale policy"
  type = string
}

variable "metric_alarm_namespace" {
  description = "The namespace for cloud watch"
  type = string
}


variable "metric_alarm_period" {
  description = "The period for cloud watch"
  type = number
}

variable "high_comparison_operator" {
  description = "The operator value for the high cpu alarm"
  type = string
}

variable "statistic" {
  description = "The statistic figure for alarm"
  type = string
}

variable "high_threshold" {
  description = "The threshold value for the high cpu alarm"
  type = number
}

variable "metric_name" {
  description = "The metric name for alarm"
  type = string
}

variable "low_threshold" {
  description = "The threshold value for the low cpu alarm"
  type = number
}

variable "low_comparison_operator" {
  description = "The operator value for the high cpu alarm"
  type = string
}

variable "metric_alarm_evaluation_periods" {
  description = "The evaluation_periods_for_alarm"
  type = number
}