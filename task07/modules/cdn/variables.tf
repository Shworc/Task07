variable "location" {
  type        = string
  description = "Azure region where resources will be deployed (e.g., East US)."
}

variable "resource_group_name" {
  type        = string
  description = "Name of the existing Azure Resource Group to import and use."
}

variable "storage_account_name" {
  type        = string
  description = "Name of the pre-created Azure Storage Account containing the blob file."
}

variable "cdn_profile_name" {
  type        = string
  description = "Name of the Azure CDN Front Door profile to be created."
}

variable "cdn_profile_sku" {
  type        = string
  description = "SKU tier for the Azure CDN Front Door profile (e.g., Standard_AzureFrontDoor)."
}

variable "cdn_endpoint_name" {
  type        = string
  description = "Name of the CDN Front Door endpoint that will expose the blob file."
}

variable "cdn_origin_group_name" {
  type        = string
  description = "Name of the origin group for the CDN Front Door configuration."
}

variable "cdn_origin_name" {
  type        = string
  description = "Name of the origin pointing to the blob storage account."
}

variable "cdn_route_name" {
  type        = string
  description = "Name of the route used to forward requests from the endpoint to the origin."
}

variable "blob_filename" {
  type        = string
  description = "Name of the blob file inside the Storage Account to be served via CDN."
}