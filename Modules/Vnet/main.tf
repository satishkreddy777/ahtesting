

resource "azurerm_virtual_network" "terrvnet" {
  name                = var.vnetname
  location            = var.vnetlocation
  resource_group_name = var.rgsname
  address_space       = var.addspace
}
