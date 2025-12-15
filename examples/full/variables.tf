// Copyright (c) 2025 Daytona
// Licensed under the MIT License - see LICENSE file for details

variable "aws_region" {
  type        = string
  description = "AWS region"
  default     = "us-east-1"
}

// Daytona API Configuration
variable "daytona_api_url" {
  type        = string
  description = "Daytona API URL"
  default     = "https://app.daytona.io/api"
}

variable "daytona_api_key" {
  type        = string
  description = "Daytona API key"
  sensitive   = true
}

// Region Configuration
variable "region_name" {
  type        = string
  description = "Name of the Daytona region"
}

variable "ssh_gateway_url" {
  type        = string
  description = "SSH Gateway URL for the region"
  default     = null
}

// Proxy Configuration
variable "proxy_url" {
  type        = string
  description = "Proxy URL for the region (setting this enables proxy deployment), e.g., https://proxy.example.com:8080"
  default     = null
}

// Snapshot Manager Configuration
variable "snapshot_manager_url" {
  type        = string
  description = "Snapshot Manager URL for the region (setting this enables Snapshot Manager deployment), e.g., https://snapshots.example.com"
  default     = null
}

// Runner Configuration
variable "runner_instance_type" {
  type        = string
  description = "EC2 instance type for the runner"
  default     = "m7i.2xlarge"
}
