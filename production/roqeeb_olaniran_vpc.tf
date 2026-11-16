resource "aws_vpc" "production_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "group_11_roqeeb_private_vpc"
  }
}
