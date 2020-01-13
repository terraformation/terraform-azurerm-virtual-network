output "id" {
  value = azurerm_virtual_network.default.id
  description = "The virtual NetworkConfiguration ID."
}
output "name" {
  value = azurerm_virtual_network.default.name
  description = "The name of the virtual network."
}
output "resource_group_name" {

  value = azurerm_virtual_network.default.resource_group_name
  description = "The name of the resource group in which to create the virtual network."
}
output "location" {
  value = azurerm_virtual_network.default.address_space
  description = "The location/region where the virtual network is created"
}
output "tags" {
  value = azurerm_virtual_network.default.tags
}
