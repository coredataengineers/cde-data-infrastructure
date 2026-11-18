terraform {
  backend "s3" {
    bucket       = "cde-terraform-state-file"
    key          = "staging/staging.tfstate"
    use_lockfile = true
    region       = "eu-north-1"
  }
}