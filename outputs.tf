output "vm_aws_ip" {
  value = aws_instance.vm.public_ip
}

output "subnet_id" {
  value = aws_subnet.subnet_id
  description = "The ID of the subnet"
}

output "security_group_id" {
  value = aws_security_group.security_group_id
  description = "The ID of the security group"
}
