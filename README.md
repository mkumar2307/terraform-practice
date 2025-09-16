# terraform-practice
Practice repo for Terraform related tasks

## Basic Terraform Commands:    

```bash
terraform init      # Initialize the Terraform working directory
terraform plan      # Preview the changes Terraform will make to match your configuration
terraform apply     # Apply the changes required to reach the desired state
terraform destroy   # Destroy the infrastructure managed by Terraform
terraform fmt       # Automatically reformats all configuration files in the current directory according to HashiCorp's recommended style.
terraform validate  # To check whether the configuaration is valid or not
```

### The terraform block

The terraform {} block configures Terraform itself, including which providers to install, and which version of Terraform to use to provision your infrastructure. Using a consistent file structure makes maintaining your Terraform projects easier, so its recommend configuring Terraform block in a dedicated terraform.tf file.