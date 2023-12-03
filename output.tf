output "public_ip" {
  value                       = one(aws_eip.dots-eip.*.public_ip)
  description                 = "Public IP Address of EC2 instance"
  sensitive                   = true
}

output "instance_id" {
  value                       = aws_instance.dots-srv.id
  description                 = "Instance ID"
}