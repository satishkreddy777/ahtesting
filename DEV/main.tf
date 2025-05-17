

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
 rgsname = module.rgmodule["rg1"].rgoutput
 addspace = each.value.addspace
 
}
