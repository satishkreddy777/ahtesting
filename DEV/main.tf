
resource "azurerm_resource_group" "firstrg" {
  name     = "testingfirstrg"
  location = "East US"
}

module "rgmodule" {
  source = "../Modules/Resources"
  rgname = var.rgname
  location = var.location
}
