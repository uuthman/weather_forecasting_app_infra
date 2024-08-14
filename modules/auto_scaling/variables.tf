variable "auto_scaling_name" {
  description = "The name of the auto scaling group"
  type = string
}

variable "cluster_name" {
  description = "The name of the cluster"
  type = string
}

variable "service_name" {
  description = "The name of the service"
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

