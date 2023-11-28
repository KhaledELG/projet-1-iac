variable "ami" {
  type                        = string
  description                 = "Ubuntu AMI ID in eu-west-3 Region"
}

variable "instance_type" {
  type                        = string
  description                 = "Instance type"
}

variable "public_key" {
  type                        = string
  description                 = "Puclic key"
}