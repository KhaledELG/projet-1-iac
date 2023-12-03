variable "ami" {
  type                        = string
  description                 = "Ubuntu AMI ID in eu-west-3 Region"
}

variable "instance_type" {
  type                        = string
  description                 = "Instance type"
}

variable "instance_name" {
  type                        = string
  description                 = "Instance name"
}

variable "eip_name" {
  type                        = string
  description                 = "Elastic IP name"
}

variable "igw_name" {
  type                        = string
  description                 = "Internet Gateway name"
}

variable "network_interface_name" {
  type                        = string
  description                 = "Network Interface name"
}

variable "route_table_name" {
  type                        = string
  description                 = "Route Table name"
}

variable "security_group_name" {
  type                        = string
  description                 = "Security Group name"
}

variable "subnet_name" {
  type                        = string
  description                 = "Subnet name"
}

variable "vpc_name" {
  type                        = string
  description                 = "Vpc name"
}

variable "public_key" {
  type                        = string
  description                 = "Puclic key"
}

variable "public_key_name" {
  type                        = string
  description                 = "Puclic key"
}