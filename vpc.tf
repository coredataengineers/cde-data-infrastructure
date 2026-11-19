resource "aws_vpc" "group_1_babatunde_vpc" {
  cidr_block       = "10.0.0.0/27"
  instance_tenancy = "default"
  enable_dns_hostnames = true

  tags = {
    Name = var.name,
    Team = var.team
  }
}
