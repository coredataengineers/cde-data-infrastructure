resource "aws_s3_bucket" "demo" {
  bucket = "cde-test-cde-test-1"

  tags = {
    Team        = "Data Engineering"
    Environment = "Production"
    Service     = "Airflow Instane"
    Managed_by  = "Terraform"
  }
}