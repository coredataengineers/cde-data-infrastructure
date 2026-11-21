

resource "aws_s3_bucket" "cde_new_data_lake_bucket" {
  bucket = "new-cde-pipeline-data-lake-landing-bucket"

  tags = {
    Name        = "data_engineering_team"
    Environment = "Staging"
  }
}

