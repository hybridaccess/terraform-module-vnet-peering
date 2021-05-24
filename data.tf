data "azurerm_virtual_network" "source" {
  provider            = azurerm.source
  name                = var.source_vnet
  resource_group_name = var.source_vnet_resource_group
}

data "azurerm_virtual_network" "target" {
  provider            = azurerm.target
  name                = var.target_vnet
  resource_group_name = var.target_vnet_resource_group
}