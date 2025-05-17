

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
 resource_group_name = module.rgmodule[each.value.rgsname].rgoutput
 addspace = each.value.addspace
 
}
