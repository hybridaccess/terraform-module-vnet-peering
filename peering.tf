resource "azurerm_virtual_network_peering" "source-To-target" {
  provider = azurerm.source

  name                         = var.source_peer_name
  resource_group_name          = var.source_vnet_resource_group
  virtual_network_name         = var.source_vnet
  remote_virtual_network_id    = data.azurerm_virtual_network.target.id
  allow_virtual_network_access = true
  allow_forwarded_traffic      = true

}

resource "azurerm_virtual_network_peering" "target-To-source" {
  provider = azurerm.target

  name                         = var.target_peer_name
  resource_group_name          = var.target_vnet_resource_group
  virtual_network_name         = var.target_vnet
  remote_virtual_network_id    = data.azurerm_virtual_network.source.id
  allow_virtual_network_access = true
  allow_forwarded_traffic      = true

}