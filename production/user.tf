resource "aws_iam_user" "demo" {
  name = "cde-demo-user"

  tags = {
    Team        = "Data Engineering"
    Environment = "Production"
    Service     = "Airflow"
    Managed_by  = "Terraform"
  }
}

resource "aws_iam_user" "api_ingestion" {
  name = "cde-api-ingestion-user"

  tags = {
    Team        = "Data Engineering"
    Environment = "Production"
    Service     = "Airflow"
    Managed_by  = "Terraform"
  }
}