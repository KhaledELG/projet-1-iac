resource "aws_instance" "dots-srv-0001" {

  ami                         = var.ami

  availability_zone           = "eu-west-3a"

  instance_type               = var.instance_type

  depends_on                  = [aws_internet_gateway.dots_igw]

  key_name                    = aws_key_pair.dots_ansible_key.key_name

  private_dns_name_options {
    hostname_type             = "ip-name"
  }

  network_interface {
    network_interface_id      = aws_network_interface.dots_network_interface.id
    device_index              = 0
  }

  root_block_device {
    volume_size               = 20
    volume_type               = "gp2"
    encrypted                 = true
  }

  tags = {
    Name                      = "dots-srv-0001",
  }

}
