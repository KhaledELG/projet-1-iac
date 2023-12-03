resource "aws_subnet" "dots_subnet" {

  vpc_id                      = aws_vpc.dots_vpc.id

  cidr_block                  = "172.16.10.0/24"

  availability_zone           = "eu-west-3a"

  tags = {
    Name                      = var.subnet_name
  }
  
}