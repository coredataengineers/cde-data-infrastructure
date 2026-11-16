resource "aws_s3_bucket" "ingestion" {
  bucket = "cde-staging-data-ingestion"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}