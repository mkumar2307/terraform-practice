# key pair generation code for ec2 instance app_server
resource "tls_private_key" "app_server" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated_key" {
  key_name   = "terraform-key"
  public_key = tls_private_key.app_server.public_key_openssh
}
