resource "aws_internet_gateway" "dots_igw" {
  
  vpc_id                      = aws_vpc.dots_vpc.id

  tags = {
    Name                      = "dots_igw",
  }

}