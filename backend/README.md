<!-- BEGIN_TF_DOCS -->
# Backend

This `main.tf `file will help us create the backend configuration.

#Goal#: I want to store my Terraform state files remotely in an Azure Storage container.
For security reasons, I also want to separate state files — organized by team.

To achieve this, I’m using this IaC to provision:
1. A storage account
2. Multiple containers (one per team)
3. All configured in private mode
4. Of course, I’m using .tfvars files for variable management.

```hcl
#resource group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}
#storage account to store the state file in remote
resource "azurerm_storage_account" "storageaccount" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  depends_on               = [azurerm_resource_group.rg]
}
# In this container I wil stock the state file of network
resource "azurerm_storage_container" "this" {
  for_each              = var.containers
  name                  = each.value.name
  storage_account_name  = azurerm_storage_account.storageaccount.name
  container_access_type = "private"
}

```

<!-- markdownlint-disable MD033 -->
## Requirements

The following requirements are needed by this module:

- <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) (>= 1.1.0)

- <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) (~> 3.0.2)

## Providers

The following providers are used by this module:

- <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) (~> 3.0.2)

## Resources

The following resources are used by this module:

- [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) (resource)
- [azurerm_storage_account.storageaccount](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) (resource)
- [azurerm_storage_container.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container) (resource)

<!-- markdownlint-disable MD013 -->
## Required Inputs

The following input variables are required:

### <a name="input_containers"></a> [containers](#input\_containers)

Description: n/a

Type:

```hcl
map(object({
    name = string
  }))
```

### <a name="input_location"></a> [location](#input\_location)

Description: n/a

Type: `string`

### <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name)

Description: n/a

Type: `string`

### <a name="input_storage_account_name"></a> [storage\_account\_name](#input\_storage\_account\_name)

Description: n/a

Type: `string`

## Optional Inputs

No optional inputs.

## Outputs

The following outputs are exported:

### <a name="output_container_details"></a> [container\_details](#output\_container\_details)

Description: n/a

### <a name="output_rg_details"></a> [rg\_details](#output\_rg\_details)

Description: n/a

### <a name="output_storage_details"></a> [storage\_details](#output\_storage\_details)

Description: n/a

## Modules

No modules.

This is a small Iac created by Paul to demo purpose.
<!-- END_TF_DOCS -->