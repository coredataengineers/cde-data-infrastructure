resource "aws_vpc" "group_2_oge_terraform_vpc" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_hostnames = true

  tags = {
    Team        = "Devops Team"    
    Environment = "Production"
  }

}
# subnet1
resource "aws_subnet" "group_2_oge_terraform_subnet_a" {
  vpc_id     = aws_vpc.group_2_oge_terraform_vpc.id  
  cidr_block = "10.0.1.0/28"

  tags = {
    Team        = "Devops Team"
    Environment = "Production" 
    
  }

}

# subnet2
resource "aws_subnet" "group_2_oge_terraform_subnet_b" {
  vpc_id     = aws_vpc.group_2_oge_terraform_vpc.id
  cidr_block = "10.0.1.16/28"

  tags = {
    Team        = "Devops Team"
    Environment = "Production"
    
  }

}

#internetgateway

resource "aws_internet_gateway" "group_2_oge_terraform_internet_gateway" {
  vpc_id = aws_vpc.group_2_oge_terraform_vpc.id

    tags = {
    Team        = "Devops Team"
    Environment = "Production"

  }

}

# route table

resource "aws_route_table" "group_2_oge_terraform_route_table" {
 vpc_id = aws_vpc.group_2_oge_terraform_vpc.id

 route {
 cidr_block = "0.0.0.0/0"
 gateway_id = aws_internet_gateway.group_2_oge_terraform_internet_gateway.id
 }
   tags = {
    Team        = "Devops Team"
    Environment = "Production"

  }
}

# route table association for subnet1
resource "aws_route_table_association" "group_2_oge_terraform_route_table_association_a" {
  subnet_id      = aws_subnet.group_2_oge_terraform_subnet_a.id
  route_table_id = aws_route_table.group_2_oge_terraform_route_table.id
}