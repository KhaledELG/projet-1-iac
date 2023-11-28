resource "aws_security_group" "dots_security_group" {

  name                        = "dots_security_group"

  vpc_id                      = aws_vpc.dots_vpc.id

  ingress {
    from_port                 = 0
    to_port                   = 65535
    protocol                  = "tcp"
    cidr_blocks               = ["0.0.0.0/0"]
  }

  ingress {
    from_port                 = 0
    to_port                   = 65535
    protocol                  = "tcp"
    ipv6_cidr_blocks          = ["::/0"]
  }

  egress { 
    from_port                 = 0
    to_port                   = 65535
    protocol                  = "tcp"
    ipv6_cidr_blocks          = ["::/0"]
  }

  egress { 
    from_port                 = 0
    to_port                   = 65535
    protocol                  = "tcp"
    cidr_blocks               = ["0.0.0.0/0"]
  }

}
