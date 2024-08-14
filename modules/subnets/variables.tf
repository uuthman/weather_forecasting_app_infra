variable "vpc_id" {
  description = "The ID of the VPC where the subnet will be created"
  type        = string
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


