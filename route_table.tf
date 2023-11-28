resource "aws_route_table" "dots_route_table" {

  vpc_id                      = aws_vpc.dots_vpc.id

  route {
    cidr_block                = "0.0.0.0/0"
    gateway_id                = aws_internet_gateway.dots_igw.id
  }

  tags = {
    Name                      = "dots_route_table"
  }
  
}

resource "aws_route_table_association" "public-test-a" {

  subnet_id                   = aws_subnet.dots_subnet.id

  route_table_id              = aws_route_table.dots_route_table.id

}