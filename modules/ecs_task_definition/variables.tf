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

variable "image" {
  description = "The image url to be containerized"
  type = string
}

variable "execution_role_arn" {
  description = "The iam role"
  type = string
}

variable "cloud_watch_name" {
  type = string
}