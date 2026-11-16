resource "aws_s3_bucket" "demo" {
  bucket= "cde-test-cde-test"

  tags = {
    Team        = "Data Engineering"
    Environment = "Production"
    Service     = "Airflow"
    Managed_by ="Terraform"
  }
}