variable "rg_name" {
  description = "Resource Group name"
  type        = string
}

variable "location" {
  description = "Azure region for deployment"
  type        = string
}

variable "sa_name" {
  description = "Storage Account name"
  type        = string
}

variable "sa_tier" {
  description = "Storage account performance tier (Standard)"
  type        = string
  default     = "Standard"
}

variable "sa_replication" {
  description = "Replication type (LRS, GRS)"
  type        = string
  default     = "LRS"
}

variable "sa_blob_public_access" {
  description = "Set to true if blob access should be public"
  type        = bool
  default     = false
}

variable "vm_name" {
  description = "VM name"
  type        = string
}

variable "vm_password" {
  description = "The password for the VM"
  type        = string
  sensitive   = true
}

variable "restored_vm_name" {
  description = "restored VM name"
  type        = string
}

variable "sa_sku_name" {
  description = "Storage account performance tier (Standard_LRS)"
  type        = string
  default     = "Standard"
}

variable "creator" {
  description = "Creator email"
  type        = string
}

variable "sub_id" {
  description = "Subsription ID"
  type        = string
}
/*
variable "storage_account" {
  description = "The hostname of the resource"
  }

variable "storage_key" {
  description = "The storage key of the resource"
  }

variable "container_name" {
  description = "The container name key of the resource"
  }
  */


variable "authType" {
  description = "The auth Type of the resource"
}
