variable "environment" {
  type        = string
  description = "Environment name (devel or stage), used to namespace resource names."
}

variable "project_name" {
  type        = string
  description = "Project prefix for resource naming."
}

variable "aws_region" {
  type        = string
  description = "AWS region resources are deployed into."
}
