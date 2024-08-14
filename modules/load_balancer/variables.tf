variable "vpc_security_group" {
  description = "The id for the vpc security group"
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