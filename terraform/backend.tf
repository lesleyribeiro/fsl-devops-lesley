# Remote state backend.
# State is stored in S3, with S3-native locking (use_lockfile) instead of the
# deprecated DynamoDB locking mechanism.
#
# NOTE: The "key" value differs per environment and is supplied at init time via:
#   terraform init -backend-config="key=devel/terraform.tfstate"
#   terraform init -backend-config="key=stage/terraform.tfstate"
# This keeps devel and stage state files fully isolated within the same bucket.

terraform {
  backend "s3" {
    bucket       = "fsl-devops-lesley-tfstate"
    region       = "eu-central-1"
    use_lockfile = true
    encrypt      = true
    # key is provided via -backend-config at init time (see above)
  }
}
