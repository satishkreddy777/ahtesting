

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
 resource_group_name = module.rgmodule["rg1"].rgoutput
 addspace = each.value.addspace
 
}

module "subnetmode" {
 source = "../Modules/Subnet"
 for_each = var.snets
   subnetname = each.value.subnetname
   rgsubname = module.rgmodule["rg1"].rgoutput
   vnetname =  module.vnetmode[each.value.vnetname]
   subaddress_prefix = each.value.subaddress_prefix
}

