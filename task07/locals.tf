locals {
  name_prefix = "cmaz-yurgas2r-mod7"
  rg_name     = format("%s-rg", local.name_prefix)
  sa_name     = format("%s-sa", local.name_prefix)
  vm_name     = format("%s-vm", local.name_prefix)
  container   = format("%s-container", local.name_prefix)
  vault       = format("%s-rsv", local.name_prefix)
  nic         = format("%s-nic", local.name_prefix)
  pip         = format("%s-pip", local.name_prefix)
  disk        = format("%s-disk", local.name_prefix)
}