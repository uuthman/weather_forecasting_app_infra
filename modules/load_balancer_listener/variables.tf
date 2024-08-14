variable "alb_id" {
  description = "The id for ecs alb"
  type = string
}


variable "target_group_id" {
  description = "The id for target group"
  type = string
}

variable "listener_port" {
  description = "The port for the alb listener"
  type = number
}

variable "listener_protocol" {
  description = "The protocol for the listener"
  type = string
}