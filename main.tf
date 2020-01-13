module "naming" {
  source         = "terraformation/naming/local"
  version        = "0.0.0"
  naming_options = local.naming_options
}

locals {
  naming_options = merge({
    resource_name = "vnet"
  }, var.naming_options)
  tags           = merge(var.resource_group.tags, var.tags)
}

resource "azurerm_virtual_network" "default" {
  location            = var.resource_group.location
  resource_group_name = var.resource_group.name
  address_space       = var.address_space
  name                = module.naming.rendered
  tags                = local.tags
}
