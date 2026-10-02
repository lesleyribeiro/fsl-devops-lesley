# Provider configuration.
#
# CloudFront is a global service, but its underlying ACM certificates (if used)
# and some edge configurations require resources to be declared in us-east-1.
# We don't use a custom ACM cert here (default *.cloudfront.net domain), but we
# keep the pattern in mind. The primary region for S3 buckets is eu-central-1.

terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "fsl-devops-challenge"
      Environment = var.environment
      ManagedBy   = "terraform"
    }
  }
}
