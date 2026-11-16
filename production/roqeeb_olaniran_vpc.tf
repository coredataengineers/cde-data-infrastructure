resource "aws_vpc" "production_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "group_11_roqeeb_private_vpc"
  }
}
resource "aws_instance" "ec2_ubuntu" {
  ami           = "ami-09f8bcda889936293"
  instance_type = "t3.nano"
  tags = {
    Name = "group_11_roqeeb_ec2"
  }
}