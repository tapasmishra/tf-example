output "instance_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = module.simple_ec2.instance_public_ip
}

output "ssh_private_key_pem" {
  description = "Private SSH key (save it!)"
  value       = module.simple_ec2.ssh_private_key_pem
  sensitive   = true
}

output "ssh_command" {
  description = "Command to SSH into the instance"
  value       = "ssh -i key.pem ubuntu@${module.simple_ec2.instance_public_ip}"
}