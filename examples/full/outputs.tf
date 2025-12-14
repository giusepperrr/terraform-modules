// Copyright (c) 2025 Daytona
// Licensed under the MIT License - see LICENSE file for details

output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}

output "region_id" {
  description = "Daytona region ID"
  value       = module.daytona_region.id
}

output "region_name" {
  description = "Daytona region name"
  value       = module.daytona_region.name
}

output "runner_id" {
  description = "Daytona runner ID"
  value       = module.daytona_runner.runner_id
}

output "runner_name" {
  description = "Daytona runner name"
  value       = module.daytona_runner.runner_name
}

output "runner_instance_id" {
  description = "ID of the EC2 instance running the Daytona runner"
  value       = module.daytona_runner.instance_id
}

output "runner_private_ip" {
  description = "Private IP address of the runner instance"
  value       = module.daytona_runner.instance_private_ip
}

output "ssm_connect_command" {
  description = "Command to connect to the instance via SSM Session Manager"
  value       = "aws ssm start-session --target ${module.daytona_runner.instance_id}"
}

output "proxy_url" {
  description = "Proxy URL (if enabled)"
  value       = var.proxy_url
}

output "ssh_gateway_url" {
  description = "SSH Gateway URL (if enabled)"
  value       = var.ssh_gateway_url
}
