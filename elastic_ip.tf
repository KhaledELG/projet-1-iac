resource "aws_eip" "dots-eip" {

  instance                    = aws_instance.dots-srv.id

  vpc                         = true

  tags = {
    Name                      = var.eip_name,
  }

}

resource "aws_eip_association" "dots-eip-association" {

  instance_id                 = aws_instance.dots-srv.id

  allocation_id               = aws_eip.dots-eip.id
  
}