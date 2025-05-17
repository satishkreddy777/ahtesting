

resource "azurerm_virtual_network" "terrvnet" {
  name                = var.vnetname
  location            = var.vnetlocation
  resource_group_name = var.resource_group_name
  address_space       = var.addspace
}
