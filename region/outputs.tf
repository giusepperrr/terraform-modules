// Copyright (c) 2025 Daytona
// Licensed under the MIT License - see LICENSE file for details

output "id" {
  description = "Region ID returned by API"
  value       = jsondecode(terracurl_request.region.response).id
}

output "name" {
  description = "Region name"
  value       = var.name
}

output "proxy_api_key" {
  description = "Proxy API key returned by API (when proxyUrl is set)"
  value       = var.proxy_url != null ? jsondecode(terracurl_request.region.response).proxyApiKey : null
  sensitive   = true
}

output "ssh_gateway_api_key" {
  description = "SSH Gateway API key returned by API (when sshGatewayUrl is set)"
  value       = var.ssh_gateway_url != null ? jsondecode(terracurl_request.region.response).sshGatewayApiKey : null
  sensitive   = true
}

output "alb_dns_name" {
  description = "ALB DNS name (if proxy is deployed)"
  value       = local.deploy_proxy ? aws_lb.proxy[0].dns_name : null
}

output "alb_zone_id" {
  description = "ALB zone ID for Route53 alias (if proxy is deployed)"
  value       = local.deploy_proxy ? aws_lb.proxy[0].zone_id : null
}

output "ecs_cluster_arn" {
  description = "ECS cluster ARN (if proxy or SSH Gateway is deployed)"
  value       = local.deploy_ecs ? aws_ecs_cluster.main[0].arn : null
}

output "proxy_ecs_service_name" {
  description = "Proxy ECS service name (if proxy is deployed)"
  value       = local.deploy_proxy ? aws_ecs_service.proxy[0].name : null
}

// SSH Gateway outputs
output "nlb_dns_name" {
  description = "NLB DNS name (if SSH Gateway is deployed)"
  value       = local.deploy_ssh_gateway ? aws_lb.ssh_gateway[0].dns_name : null
}

output "nlb_zone_id" {
  description = "NLB zone ID for Route53 alias (if SSH Gateway is deployed)"
  value       = local.deploy_ssh_gateway ? aws_lb.ssh_gateway[0].zone_id : null
}

output "ssh_gateway_ecs_service_name" {
  description = "SSH Gateway ECS service name (if deployed)"
  value       = local.deploy_ssh_gateway ? aws_ecs_service.ssh_gateway[0].name : null
}

output "proxy_ecs_security_group_id" {
  description = "Security group ID for proxy ECS tasks (if proxy is deployed)"
  value       = local.deploy_proxy ? aws_security_group.ecs[0].id : null
}

output "ssh_gateway_ecs_security_group_id" {
  description = "Security group ID for SSH Gateway ECS tasks (if deployed)"
  value       = local.deploy_ssh_gateway ? aws_security_group.ssh_gateway_ecs[0].id : null
}
