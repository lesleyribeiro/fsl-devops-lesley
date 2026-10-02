# Root module: wires up the static_site module for the current environment.
# Which environment this applies to is controlled entirely by the -var-file
# passed at plan/apply time (environments/devel.tfvars or environments/stage.tfvars),
# combined with the matching -backend-config key at init time.

module "static_site" {
  source = "./modules/static_site"

  environment  = var.environment
  project_name = var.project_name
  aws_region   = var.aws_region
}
