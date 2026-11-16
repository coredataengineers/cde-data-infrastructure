resource "aws_s3_bucket" "ingestion" {
  bucket = "cde-staging-data-ingestion"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_iam_user" "lb" {
  name = "loretta"
  path = "/system/"
}