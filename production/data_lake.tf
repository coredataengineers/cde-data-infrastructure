resource "aws_s3_bucket" "cde_test" {
  bucket = "cde-test-cde-test-7"

  tags = {
    Team        = "Data Engineering"
    Environment = "Production"
    Service     = "Airflow"
    Managed_by  = "Terraform"
  }
}