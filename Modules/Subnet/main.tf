
resource "azurerm_subnet" "terrsubnet" {
  name                 =  var.subnetname
  resource_group_name  = var.rgsubname
  virtual_network_name = var.vnetname
  address_prefix       = var.subaddress_prefix

  delegation {
    name = "acctestdelegation"

    service_delegation {
      name    = "Microsoft.ContainerInstance/containerGroups"
      actions = ["Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"]
    }
  }
}
