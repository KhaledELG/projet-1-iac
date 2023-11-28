resource "aws_eip" "dots-eip" {

  instance                    = aws_instance.dots-srv-0001.id

  vpc                         = true

  tags = {
    Name                      = "dots-eip",
  }

}

resource "aws_eip_association" "dots-eip-association" {

  instance_id                 = aws_instance.dots-srv-0001.id

  allocation_id               = aws_eip.dots-eip.id
  
}