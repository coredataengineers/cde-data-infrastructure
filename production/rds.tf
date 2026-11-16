resource "random_password" "airbyte_db_password" {
  length           = 24
  special          = true
  override_special = "$%&"
}

resource "aws_ssm_parameter" "airbyte_password" {
  name  = "/production/data_engineeing_team/airbyte/postgres_password"
  type  = "String"
  value = random_password.airbyte_db_password.result
}


resource "aws_db_instance" "default" {
  allocated_storage    = 10
  db_name              = "airbyte"
  identifier           = "cde-new-db"
  engine               = "postgres"
  engine_version       = "18"
  instance_class       = "db.t3.micro"
  username             = "airbyte"
  password             = aws_ssm_parameter.airbyte_password.value
  skip_final_snapshot  = true
}
