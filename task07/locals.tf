locals {
  prefix = "cmtr-yurgas2r-mod7"

  cdn_profile_name      = "${local.prefix}-fd-profile"
  cdn_endpoint_name     = "${local.prefix}-fd-endpoint"
  cdn_origin_group_name = "${local.prefix}-fd-origin-group"
  cdn_origin_name       = "${local.prefix}-fd-origin"
  cdn_route_name        = "default"
}