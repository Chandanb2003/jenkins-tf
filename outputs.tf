output "instance_Private_ip_addr" {
  value = aws_instance.dev-instance[*].private_ip
}

output "instance_Public_ip_addr" {
  value = aws_instance.dev-instance[*].public_ip
}
