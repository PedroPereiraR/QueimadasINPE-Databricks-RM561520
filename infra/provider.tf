terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
    databricks = {
      source  = "databricks/databricks"
      version = "~> 1.83"
    }
  }

  # Backend do RM561520
  backend "azurerm" {
    resource_group_name  = "rg-tfstate"
    storage_account_name = "sttfstate561520"
    container_name       = "tfstate"
    key                  = "queimadas-rm561520.tfstate"
  }
}

provider "azurerm" {
  features {}
}
