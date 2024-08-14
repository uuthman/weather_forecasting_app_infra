resource "aws_cloudwatch_log_group" "log_group" {
  name              = var.name
  retention_in_days = 30

  tags = {
    Name = "weather-app-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "cb_log_stream" {
  name           = "app-log-stream"
  log_group_name = aws_cloudwatch_log_group.log_group.name
}