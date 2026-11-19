resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.group_1_babatunde_vpc.id

  route {
    cidr_block = "10.0.0.0/0"
    gateway_id = aws_internet_gateway.group_1_babatunde_internet_gateway.id
  }

  

  tags = {
    Name = var.name
    Team = var.team
  }
}

resource "aws_route_table_association" "public_route_table_association" {
  subnet_id      = aws_subnet.group_1-public-babatunde-subnet.id
  route_table_id = aws_route_table.public_route_table.id
}



resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.group_1_babatunde_vpc.id



  tags = {
    Name = var.name
    Team = var.team
  }
}

resource "aws_route_table_association" "private_route_table_association" {
  subnet_id      = aws_subnet.group_1-private-babatunde-subnet.id
  route_table_id = aws_route_table.private_route_table.id
}