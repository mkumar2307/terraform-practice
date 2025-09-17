# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "app_server" {
  ami           = data.aws_ami.ubuntu.id

  # hardcoding the argument values
  # instance_type = "t2.micro"

  # Use the variables from variables.tf insted of hardcoding the argument values
  instance_type = var.instance_type

  tags = {
    # hardcoding the argument values
    # Name = "learn-terraform"

    # Use the variables from variables.tf insted of hardcoding the argument values
    Name = var.instance_name
  }
}
