output "cluster_id" {
  description = "The id for the cluster"
  value = aws_ecs_cluster.main.id
}

output "cluster_name" {
  description = "The name of the cluster"
  value = aws_ecs_cluster.main.name
}