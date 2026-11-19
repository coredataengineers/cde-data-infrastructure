resource "aws_subnet" "group_1-public-babatunde-subnet" {
  vpc_id     = aws_vpc.group_1_babatunde_vpc.id
  cidr_block = "10.0.0.0/28"

  tags = {
    Name = var.name
    Team = var.team
  }
}


resource "aws_subnet" "group_1-private-babatunde-subnet" {
  vpc_id     = aws_vpc.group_1_babatunde_vpc.id
  cidr_block = "10.0.0.16/28"

  tags = {
    Name = var.name
    Team = var.team
  }
}
