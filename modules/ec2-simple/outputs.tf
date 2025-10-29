output "instance_public_ip" {
  value = aws_instance.vm.public_ip
}

output "ssh_private_key_pem" {
  value     = tls_private_key.ssh.private_key_pem
  sensitive = true
}