# Variables for the deployment. Environment-specific values are supplied via
# -var-file at plan/apply time (environments/devel.tfvars, environments/stage.tfvars).

variable "aws_region" {
  type        = string
  description = "AWS region to deploy resources into."
  default     = "eu-central-1"
}

variable "environment" {
  type        = string
  description = "Deployment environment name (devel or stage). Used to namespace resources."

  validation {
    condition     = contains(["devel", "stage"], var.environment)
    error_message = "environment must be either 'devel' or 'stage'."
  }
}

variable "project_name" {
  type        = string
  description = "Short project identifier used as a prefix for resource names."
  default     = "fsl-devops-lesley"
}
