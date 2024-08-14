output "subnet_id" {
  description = "This is the ID of the first subnet"
  value = aws_subnet.subnet.id
}

output "subnet_2_id" {
  description = "This is the ID of the second subnet"
  value = aws_subnet.subnet2.id
}