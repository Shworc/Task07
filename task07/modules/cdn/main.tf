data "azurerm_storage_account" "origin" {
  name                = var.storage_account_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_cdn_frontdoor_profile" "profile" {
  name                = var.cdn_profile_name
  resource_group_name = var.resource_group_name
  #location            = var.location
  sku_name = var.cdn_profile_sku
}

resource "azurerm_cdn_frontdoor_endpoint" "endpoint" {
  name                     = var.cdn_endpoint_name
  cdn_frontdoor_profile_id = azurerm_cdn_frontdoor_profile.profile.id
}

resource "azurerm_cdn_frontdoor_origin_group" "origin_group" {
  name                     = var.cdn_origin_group_name
  cdn_frontdoor_profile_id = azurerm_cdn_frontdoor_profile.profile.id

  session_affinity_enabled = false

  load_balancing {
    sample_size                        = 4
    successful_samples_required        = 3
    additional_latency_in_milliseconds = 50
  }
}

resource "azurerm_cdn_frontdoor_origin" "origin" {
  name                           = var.cdn_origin_name
  cdn_frontdoor_origin_group_id  = azurerm_cdn_frontdoor_origin_group.origin_group.id
  host_name                      = data.azurerm_storage_account.origin.primary_blob_host
  origin_host_header             = data.azurerm_storage_account.origin.primary_blob_host
  https_port                     = 443
  enabled                        = true
  weight                         = 1000
  priority                       = 1
  certificate_name_check_enabled = true
}

resource "azurerm_cdn_frontdoor_route" "route" {
  name                          = var.cdn_route_name
  cdn_frontdoor_endpoint_id     = azurerm_cdn_frontdoor_endpoint.endpoint.id
  cdn_frontdoor_origin_group_id = azurerm_cdn_frontdoor_origin_group.origin_group.id
  cdn_frontdoor_origin_ids      = [azurerm_cdn_frontdoor_origin.origin.id]
  supported_protocols           = ["Https"]
  patterns_to_match             = ["/*"]
  forwarding_protocol           = "MatchRequest"
  link_to_default_domain        = true
  https_redirect_enabled        = true
}