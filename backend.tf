terraform {
  backend "s3" {
    bucket = "group-1-babaunde-backend"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}
