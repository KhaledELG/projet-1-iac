resource "aws_key_pair" "dots_ansible_key" {

  key_name                    = var.public_key_name

  public_key                  = var.public_key

}