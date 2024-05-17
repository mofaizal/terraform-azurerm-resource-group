<!-- BEGIN_TF_DOCS -->
# Default example

#What is a resource group

A resource group is a container that holds related resources for an Azure solution. The resource group can include all the resources for the solution, or only those resources that you want to manage as a group. You decide how you want to allocate resources to resource groups based on what makes the most sense for your organization. Generally, add resources that share the same lifecycle to the same resource group so you can easily deploy, update, and delete them as a group.

This is Resource group module script using terraform. (for learning demo)

```hcl
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.1.0"
    }
  }
}

resource "random_string" "random" {
  length  = 6
  special = false
  upper   = false
}

provider "azurerm" {
  features {
  }
}

module "resource-group" {
  source   = "../"
  rg_name  = "tf-moudle-rg-${random_string.random.result}"
  location = "West US"
}

```

<!-- markdownlint-disable MD033 -->
## Requirements

The following requirements are needed by this module:

- <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) (3.1.0)

## Providers

The following providers are used by this module:

- <a name="provider_random"></a> [random](#provider\_random)

## Resources

The following resources are used by this module:

- [random_string.random](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) (resource)

<!-- markdownlint-disable MD013 -->
## Required Inputs

No required inputs.

## Optional Inputs

No optional inputs.

## Outputs

No outputs.

## Modules

The following Modules are called:

### <a name="module_resource-group"></a> [resource-group](#module\_resource-group)

Source: ../

Version:


This is example used in Technology with Faizal YouTube demo
<!-- END_TF_DOCS -->