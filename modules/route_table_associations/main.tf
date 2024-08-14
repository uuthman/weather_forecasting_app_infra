resource "aws_route_table_association" "subnet_association" {
  route_table_id = var.route_table_id
  subnet_id = var.subnet_id
}

resource "aws_route_table_association" "subnet_2_association" {
  route_table_id = var.route_table_id
  subnet_id = var.subnet_2_id
}