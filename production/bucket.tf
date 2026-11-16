resource "aws_s3_bucket" "demo_s3" {
  bucket = "group-1-zainab-fact-sales2"

  tags = {
    Team        = "Data Team"
    Environment = "Production"

  }
# }
# resource "aws_s3_bucket_acl" "example" {
#   bucket = aws_s3_bucket.demo_s3.id
#   #acl    = "private"
# 
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.demo_s3.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.demo_s3.id
  key    = "prod/orders/daily_orders"
  source = "ads_stats.csv"

}
