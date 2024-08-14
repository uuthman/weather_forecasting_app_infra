output "vpc_sg_id" {
  description = "The id of the vpc security group"
  value = aws_security_group.vpc_sg.id
}

output "ecs_sg_id" {
  description = "The id of the ecs/fargate security group"
  value = aws_security_group.ecs_sg.id
}