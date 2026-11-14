terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-north-1"
}


# terraform {
#   backend "s3" {
#     bucket       = "cde-terraform-state-file"
#     key          = "production/"
#     use_lockfile = true
#     region       = "eu-north-1"
#   }
# }