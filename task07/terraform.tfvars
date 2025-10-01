rg_name               = "cmaz-yurgas2r-mod7-rg-754b"
location              = "westeurope"
sa_name1              = "task7storageacct"
vm_name               = "cmaz-yurgas2r-mod7-vm"
vm_password           = "Admin@user"
restored_vm_name      = "cmaz-yurgas2r-mod7-new-vm"
sa_name               = "cmazyurgas2rmod7sa"
sa_sku_name           = "Standard_LRS"
sa_blob_public_access = false
creator               = "sasa_filipovic@epam.com"
sub_id                = "9295a561-dd68-488d-9a13-1acb84f317fe"
vault_name            = "cmaz-yurgas2r-mod7-rsv"
sa_tier               = "Standard"
sa_replication        = "LRS"
authType              = "Key"
/*
Resource group name: ${rg_name}
Virtual machine name: ${vm_name}
Restored virtual machine name: ${restored_vm_name}
Recovery service vault name: ${vault_name}
Storage account (sa) name: ${sa_name}
SA sku name: ${sa_sku_name}
SA public access: ${sa_blob_public_access}

Resource group name: cmaz-yurgas2r-mod7-rg-754b
Virtual machine name: cmaz-yurgas2r-mod7-vm
Restored virtual machine name: cmaz-yurgas2r-mod7-new-vm
Recovery service vault name: cmaz-yurgas2r-mod7-rsv
Storage account (sa) name: cmazyurgas2rmod7sa
SA sku name: Standard_LRS
SA public access: false
Region: Using MS Pricing calculator select less costed region
*/