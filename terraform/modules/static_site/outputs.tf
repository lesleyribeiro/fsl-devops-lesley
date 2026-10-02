output "site_bucket_name" {
  value       = aws_s3_bucket.site.id
  description = "Name of the S3 bucket holding the site content."
}

output "logs_bucket_name" {
  value       = aws_s3_bucket.logs.id
  description = "Name of the S3 bucket holding CloudFront access logs."
}

output "cloudfront_distribution_id" {
  value       = aws_cloudfront_distribution.site.id
  description = "CloudFront distribution ID, used for cache invalidations in the CD pipeline."
}

output "cloudfront_domain_name" {
  value       = aws_cloudfront_distribution.site.domain_name
  description = "Public CloudFront URL for the deployed application."
}
