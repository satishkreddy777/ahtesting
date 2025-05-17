
resource "azurerm_resource_group" "firstrg" {
  name     = "testingfirstrg"
  location = "East US"
}

module "rgmodule" {
  source = "../Modules/Resources"

  for_each = var.rgs
  rgname = var.rgname
  location = var.location
}
