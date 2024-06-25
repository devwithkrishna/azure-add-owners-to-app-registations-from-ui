terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.99.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "=2.52.0"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "azuread" {
}
