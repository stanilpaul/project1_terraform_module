# Backend 

This `main.tf `file will help us create the backend configuration.

#Goal#: I want to store my Terraform state files remotely in an Azure Storage container.
For security reasons, I also want to separate state files — organized by team.

To achieve this, I’m using this IaC to provision:
1. A storage account
2. Multiple containers (one per team)
3. All configured in private mode
4. Of course, I’m using .tfvars files for variable management.