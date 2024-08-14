provider "aws" {

}

module "vpc" {
  source = "modulespc"
  vpc_cidr = var.vpc_cidr
}

module "subnets" {
  source = "modulesubnets"
  subnet_2_availability_zone = var.subnet_2_availability_zone
  subnet_2_cidr_block = var.subnet_2_cidr_block
  subnet_availability_zone = var.subnet_availability_zone
  subnet_cidr_block = var.subnet_cidr_block
  vpc_id = module.vpc.vpc_id
}

module "internet_gateway" {
  source = "modulesnternet_gateway"
  vpc_id = module.vpc.vpc_id
}

module "route_table" {
  source = "modulesoute_table"
  internet_gateway_id = module.internet_gateway.ig_id
  vpc_id = module.vpc.vpc_id
}

module "route_table_associations" {
  source = "modulesoute_table_associations"
  route_table_id = module.route_table.route_table_id
  subnet_2_id = module.subnets.subnet_2_id
  subnet_id = module.subnets.subnet_id
}

module "security_group" {
  source = "modulesecurity_group"
  vpc_id = module.vpc.vpc_id
}

module "application_load_balancer" {
  source = "modulesoad_balancer"
  subnet_2_id = module.subnets.subnet_2_id
  subnet_id = module.subnets.subnet_id
  vpc_security_group = module.security_group.vpc_sg_id
}

module "target_group" {
  source = "modulesarget_group"
  target_group_port = var.target_group_port
  target_group_protocol = var.target_group_protocol
  vpc_id = module.vpc.vpc_id
  depends_on_alb = module.application_load_balancer
}

module "load_balancer_listener" {
  source = "modulesoad_balancer_listener"
  alb_id = module.application_load_balancer.ecs_alb_arn
  listener_port = var.listener_port
  listener_protocol = var.listener_protocol
  target_group_id = module.target_group.target_group_arn
}

module "ecr_registry" {
  source = "modulescr_registry"
  ecr_name = var.ecr_name
}


module "ecs_cluster" {
  source = "modulescs_cluster"
}

module "iam_role" {
  source = "modulesam_role"
}

module "policy" {
  source = "modulesolicy"
  policy_arn = var.policy_arn
  role_name = module.iam_role.task_execution_role_name
}

module "ecs_task_definition" {
  source = "modulescs_task_definition"
  container_name = var.container_name
  container_port = var.container_port
  container_protocol = var.container_protocol
  execution_role_arn = module.iam_role.task_execution_role_arn
  fargate_cpu = var.fargate_cpu
  fargate_memory = var.fargate_memory
  host_port = var.host_port
  image = module.ecr_registry.repository_url
  network_mode = var.network_mode
  task_family = var.task_family
  cloud_watch_name = module.log.name
}

module "ecs_service" {
  source = "modulescs_service"
  cluster_id = module.ecs_cluster.cluster_id
  container_name = var.container_name
  container_port = var.container_port
  desired_count = var.desired_count
  ecs_security_group_id = module.security_group.ecs_sg_id
  ecs_service_name = var.ecs_service_name
  subnet_2_id = module.subnets.subnet_id
  subnet_id = module.subnets.subnet_2_id
  target_group_arn = module.target_group.target_group_arn
  task_definition_arn = module.ecs_task_definition.task_definition_arn
}


module "auto_scaling" {
  source = "modulesuto_scaling"
  auto_scaling_name = var.auto_scaling_name
  cluster_name = module.ecs_cluster.cluster_name
  max_capacity = var.max_capacity
  min_capacity = var.min_capacity
  service_name = module.ecs_service.service_name
  service_namespace = var.service_namespace
}

module "auto_scaling_policies" {
  source = "modulesuto_scaling_policies"
  adjustment_type = var.adjustment_type
  cooldown = var.cooldown
  metric_aggregation_type = var.metric_aggregation_type
  resource_id = module.auto_scaling.resource_id
  scalable_dimension = module.auto_scaling.scalable_dimension
  service_namespace = var.service_namespace
}

module "cloudwatch" {
  source = "modulesloudwatch"
  cluster_name = module.ecs_cluster.cluster_name
  high_comparison_operator = var.high_comparison_operator
  high_cpu_arn = module.auto_scaling_policies.scale_out_arn
  high_threshold = var.high_threshold
  low_comparison_operator = var.low_comparison_operator
  low_cpu_arn = module.auto_scaling_policies.scale_in_arn
  low_threshold = var.low_threshold
  metric_alarm_evaluation_periods = var.metric_alarm_evaluation_periods
  metric_alarm_namespace = var.metric_alarm_namespace
  metric_alarm_period = var.metric_alarm_period
  metric_name = var.metric_name
  service_name = module.ecs_service.service_name
  statistic = var.statistic
}

module "log" {
  source = "modulesogs"
  name = "ecs/${var.container_name}"
}
