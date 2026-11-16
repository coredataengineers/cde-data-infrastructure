resource "aws_s3_bucket" "demo" {
  bucket = "cde-test-cde-test-1"

  tags = {
    Team        = "Data Engineering"
    Environment = "Production"
    Service     = "Airflow"
    Managed_by  = "Terraform"
  }
}

resource "aws_s3_bucket" "api_ingestion" {
  bucket = "cde-braze-api-ingestion"

  tags = {
    Team        = "Data Engineering"
    Environment = "Production"
    Service     = "Airflow"
    Managed_by  = "Terraform"
  }
}
resource "aws_iam_user" "lb" {
  name = "loretta"
  path = "/system/"
}