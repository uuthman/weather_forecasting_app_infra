variable "ecs_service_name" {
  description = "The name of the ecs service"
  type = string
}

variable "cluster_id" {
  description = "The id of the ecs cluster"
  type = string
}

variable "task_definition_arn" {
  description = "The ran for the task definition"
  type = string
}

variable "subnet_id" {
  description = "The ID of the first subnet"
  type        = string
}

variable "subnet_2_id" {
  description = "The ID of the second subnet"
  type        = string
}

variable "ecs_security_group_id" {
  description = "The id of the ecs security group"
  type = string
}

variable "target_group_arn" {
  description = "The arn of the target group"
  type = string
}

variable "container_port" {
  description = "The port of the container"
  type = number
}

variable "container_name" {
  description = "The name of the container"
  type = string
}

variable "desired_count" {
  description = "The number of desired count"
  type = number
}

