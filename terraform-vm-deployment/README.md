# Terraform VM Deployment

This project is designed to deploy a free Linux virtual machine on Azure without a public IP. The deployment is organized into modules for better structure and reusability.

## Project Structure

- **modules/vm/**: Contains the configuration for the virtual machine.
  - **main.tf**: Main configuration for the VM deployment.
  - **variables.tf**: Input variables for the VM module.
  - **outputs.tf**: Outputs for the VM module.

- **network/**: Contains the configuration for the network components.
  - **main.tf**: Configuration for virtual network and subnet.
  - **variables.tf**: Input variables for the network module.
  - **outputs.tf**: Outputs for the network module.

- **main.tf**: Entry point for the Terraform configuration, calling the VM and network modules.

- **variables.tf**: Input variables for the overall project.

- **outputs.tf**: Outputs for the overall project.

- **provider.tf**: Provider settings for Terraform.

## Deployment Instructions

1. **Prerequisites**: Ensure you have Terraform installed and configured to work with Azure.

2. **Configuration**: Update the `variables.tf` files in both the `modules/vm/` and `network/` directories to set your desired values.

3. **Initialize Terraform**: Run `terraform init` in the project root to initialize the configuration.

4. **Plan the Deployment**: Execute `terraform plan` to see the resources that will be created.

5. **Apply the Deployment**: Run `terraform apply` to create the resources defined in the configuration.

6. **Outputs**: After deployment, check the outputs to get details about the created resources.

## Tags

The virtual machine will be tagged with the following:
- `created_by`: 'senthilk'
- `created_date`: '20/07/2025'
- `env`: 'dev'

This README provides a high-level overview of the project and instructions for deploying the virtual machine. For detailed configurations, refer to the respective module files.