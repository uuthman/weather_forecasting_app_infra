output "repository_url" {
  description = "The url of the repository"
  value = aws_ecr_repository.main.repository_url
}