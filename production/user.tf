resource "aws_iam_user" "group_16_gbenga" {
  name = "group_16_gbenga_user_test"

  tags = {
    Team        = "Data Engineering"
    Environment = "Production"
    Service     = "Airflow"
    Managed_by  = "Terraform"
  }
}