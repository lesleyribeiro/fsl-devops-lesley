output "site_bucket_name" {
  value = module.static_site.site_bucket_name
}

output "logs_bucket_name" {
  value = module.static_site.logs_bucket_name
}

output "cloudfront_distribution_id" {
  value = module.static_site.cloudfront_distribution_id
}

output "cloudfront_domain_name" {
  value       = module.static_site.cloudfront_domain_name
  description = "Public URL of the deployed application for this environment."
}
