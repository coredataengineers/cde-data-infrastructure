resource "aws_internet_gateway" "group_1_babatunde_internet_gateway" {
  vpc_id = aws_vpc.group_1_babatunde_vpc.id

  tags = {
    Name = var.name
    Team = var.team
  }
}
