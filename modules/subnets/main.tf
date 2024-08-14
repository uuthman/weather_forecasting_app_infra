resource "aws_subnet" "subnet" {
  vpc_id = var.vpc_id
  cidr_block = var.subnet_cidr_block
  availability_zone = var.subnet_availability_zone

  tags = {
    name = "Subnet"
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id = var.vpc_id
  cidr_block = var.subnet_2_cidr_block
  availability_zone = var.subnet_2_availability_zone

  tags = {
    name = "Subnet"
  }
}