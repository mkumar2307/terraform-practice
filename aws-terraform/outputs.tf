# This output value exposes EC2 instance's hostname from Terraform workspace
output "instance_hostname" {
  description = "Private DNS name of the EC2 instance."
  value       = aws_instance.app_server.private_dns
}

# Output the private key used to SSH into the instance.
output "private_key_pem" {
  value     = tls_private_key.app_server.private_key_pem
  sensitive = true
}
