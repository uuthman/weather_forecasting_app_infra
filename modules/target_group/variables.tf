variable "vpc_id" {
  description = "The ID of the VPC where the IG will be used"
  type        = string
}

variable "target_group_port" {
  description = "The port for target group"
  type = number
}

variable "target_group_protocol" {
  description = "The protocol for target protocol"
  type = string
}

variable "depends_on_alb" {
  description = "This depends on alb"
  type = any
}