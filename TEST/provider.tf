terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.29.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "4b65592a-037c-4715-8a72-af4049a6b628"
}
