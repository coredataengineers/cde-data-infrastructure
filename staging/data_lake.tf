resource "aws_s3_bucket" "aderas_ingestion" {
  bucket = "cde-aderas-data-ingestion"

  tags = {
    team        = "data management"
    Environment = "Dev"
  }
}