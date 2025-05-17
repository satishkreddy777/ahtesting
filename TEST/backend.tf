terraform {
 backend "azurerm" {
      resource_group_name  = "ahtestrg"
      storage_account_name = "ahtestsg"
      container_name       = "ahtest1cont"
      key                  = "terraform.tfstate"
  }
}
