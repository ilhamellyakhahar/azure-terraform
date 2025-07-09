locals {
  default_vm = {
    vm_user      = "azureuser"
    caching      = "ReadWrite"
    disk_sku     = "Standard_LRS"
    os_publisher = "Canonical"
    os_offer     = "0001-com-ubuntu-server-jammy"
    os_sku       = "24_04-lts-gen2"
    os_version   = "latest"
    ephemeral    = false
    encryption   = null
    lun          = 0
    public_ip    = true
    ssh_key      = null
    sec_rules    = []
  }

  merged_vms = [
    for vm in var.vms : merge(local.default_vm, vm)
  ]
}