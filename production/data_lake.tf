resource "aws_s3_bucket" "example" {
  bucket = "cde-test-cde-test"

  tags = {
    Team        = "Data Engineering"
    Environment = "Production"
    Service     = "Airflow"
    Managed_by  = "Terraform"
  }
}