resource "aws_network_interface" "dots_network_interface" {

  subnet_id                   = aws_subnet.dots_subnet.id

  private_ips                 = ["172.16.10.100"]

  security_groups             = [aws_security_group.dots_security_group.id]

  tags = {
    Name                      = var.network_interface_name,
  }
  
}