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

### Variables and outputs

Input variables let you parametrize the behavior of your Terraform configuration. These input variables allows us to update values in our configuaration without modifying configuartaion files eachtime. We can set values for your Terraform variables in a number of ways, including environment variables, command line arguments, and in files stored on disk.         
```bash 
terraform plan -var instance_type=t2.large
```
You can also define output values to expose data about the resources you create.

### Modules

Modules are reusable sets of configuration. Use modules to consistently manage complex infrastructure deployments that include multiple resources and data sources. Like providers, you can source modules from the Terraform Registry. You can also create your own modules and share them within your organization.