terraform {
 backend "azurerm" {
      resource_group_name  = "ahtestingrg"
      storage_account_name = "ahtestingsg"
      container_name       = "terraformcont1"
      key                  = "terraform.tfstate"
  }
}
