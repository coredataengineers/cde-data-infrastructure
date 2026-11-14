resource "aws_s3_bucket" "example" {
  bucket = "cde-test-cde-test-najeeb"

  tags = {
    Team        = "Data Engineering Team"
    Environment = "Production"
    Service     = "Airflow"
  }
}