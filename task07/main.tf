import {
  to = azurerm_resource_group.imported_rg
  id = "/subscriptions/9295a561-dd68-488d-9a13-1acb84f317fe/resourceGroups/cmtr-yurgas2r-mod7-rg"
}

import {
  to = azurerm_storage_account.imported_sa
  id = "/subscriptions/9295a561-dd68-488d-9a13-1acb84f317fe/resourceGroups/cmtr-yurgas2r-mod7-rg/providers/Microsoft.Storage/storageAccounts/cmtryurgas2rmod7sa"
}

resource "azurerm_resource_group" "imported_rg" {
  name     = var.resource_group_name #"cmtr-yurgas2r-mod7-rg"
  location = "East US"
}

resource "azurerm_storage_account" "imported_sa" {
  name                     = var.storage_account_name #"cmtryurgas2rmod7sa"
  resource_group_name      = azurerm_resource_group.imported_rg.name
  location                 = azurerm_resource_group.imported_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  allow_nested_items_to_be_public  = false
  cross_tenant_replication_enabled = false
}

module "cdn" {
  source = "./modules/cdn"

  resource_group_name  = var.resource_group_name
  location             = var.location
  storage_account_name = var.storage_account_name
  blob_filename        = var.blob_filename

  cdn_profile_name      = local.cdn_profile_name
  cdn_profile_sku       = "Standard_AzureFrontDoor"
  cdn_endpoint_name     = local.cdn_endpoint_name
  cdn_origin_group_name = local.cdn_origin_group_name
  cdn_origin_name       = local.cdn_origin_name
  cdn_route_name        = local.cdn_route_name
}