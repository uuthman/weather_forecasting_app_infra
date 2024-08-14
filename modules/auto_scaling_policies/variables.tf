variable "service_namespace" {
  description = "The namespace of the service"
  type = string
}

variable "resource_id" {
  description = "The resource id for the auto scaling target"
  type = string
}

variable "scalable_dimension" {
  description = "The scalable dimension for the auto scaling target"
  type = string
}

variable "adjustment_type" {
  description = "The adjustment type for the step scaling policy"
  type = string
}

variable "cooldown" {
  description = "The cooldown for the step scaling policy"
  type = number
}

variable "metric_aggregation_type" {
  description = "The metric aggregation type for the step scaling policy"
  type = string
}