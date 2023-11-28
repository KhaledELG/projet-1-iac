resource "aws_key_pair" "dots_ansible_key" {

  key_name                    = "dots_ansible_key"

  public_key                  = var.public_key

}