terraform {
  backend "s3" {
    bucket       = "cde-terraform-state-file"
    key          = "production/production.tfstate"
    use_lockfile = true
    region       = "eu-north-1"
  }
}
