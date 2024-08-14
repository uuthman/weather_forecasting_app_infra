variable "vpc_cidr" {
  description = "The CIDR for the vpc"
  type = string
}

variable "subnet_cidr_block" {
  description = "The CIDR block for the subnet"
  type        = string
}

variable "subnet_availability_zone" {
  description = "The availability zone for the subnet"
  type        = string
}

variable "subnet_2_cidr_block" {
  description = "The CIDR block for the subnet 2"
  type        = string
}

variable "subnet_2_availability_zone" {
  description = "The availability zone for the subnet 2"
  type        = string
}

variable "listener_port" {
  description = "The port for the alb listener"
  type = number
}

variable "listener_protocol" {
  description = "The protocol for the listener"
  type = string
}

variable "target_group_port" {
  description = "The port for target group"
  type = number
}

variable "target_group_protocol" {
  description = "The protocol for target protocol"
  type = string
}

variable "task_family" {
  description = "The task family for the task definition"
  type = string
}

variable "network_mode" {
  description = "The network mode for the task definition"
  type = string
}

variable "fargate_cpu" {
  description = "The cpu amount for fargate"
  type = number
}

variable "fargate_memory" {
  description = "The memory for fargate"
  type = number
}

variable "container_name" {
  description = "The service name"
  type = string
}

variable "container_port" {
  description = "The port of the container"
  type = number
}

variable "host_port" {
  description = "The port of the host"
  type = number
}

variable "container_protocol" {
  description = "The protocol of the container"
  type = string
}

variable "policy_arn" {
  description = "The arn of the policy"
  type = string
}

variable "desired_count" {
  description = "The number of desired count"
  type = number
}

variable "ecs_service_name" {
  description = "The name of the ecs service"
  type = string
}

variable "service_namespace" {
  description = "The namespace of the service"
  type = string
}

variable "max_capacity" {
  description = "The maximum capacity of server"
  type = number
}

variable "min_capacity" {
  description = "The minimum capacity of server"
  type = number
}

variable "auto_scaling_name" {
  description = "The name of the auto scaling group"
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

variable "ecr_name" {
  description = "The name of the registry"
  type = string
}