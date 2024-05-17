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

