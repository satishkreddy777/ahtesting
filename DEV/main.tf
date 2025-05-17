
resource "azurerm_resource_group" "firstrg" {
  name     = "testingfirstrg"
  location = "East US"
}

module "rgmodule" {
  source = "../Modules/Resources"

  for_each = var.rgs
  rgname = each.value.rgname
  location = each.value.location
}

module "vnetmode" {
 source = "../Modules/Vnet"
 for_each = var.vnetts
 vnetname = each.value.vnetname
 vnetlocation = each.value.vnetlocation
 rgname = module.rgmodule["rg1"].
 addspace = each.value.addspace
 
}
