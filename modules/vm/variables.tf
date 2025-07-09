variable "vms" {
  type = list(object({
    vm_name     = string
    vm_pass     = string
    vm_size     = string
    subnet      = string
    location    = string
    rg_name     = string

    vm_user      = optional(string)
    caching      = optional(string)
    disk_sku     = optional(string)
    os_publisher = optional(string)
    os_offer     = optional(string)
    os_sku       = optional(string)
    os_version   = optional(string)
    ephemeral    = optional(bool)
    encryption   = optional(string)
    lun          = optional(number)
    public_ip    = optional(bool, true)
    ssh_key      = optional(string)

    disk_name    = optional(string)
    disk_size    = optional(number)

    nsg_name     = optional(string)
    sec_rules    = optional(list(object({
      name         = string
      priority     = number
      direction    = string
      access       = string
      protocol     = string
      src_port     = string
      dest_port    = string
      src_address  = string
      dest_address = string
    })), [])
  }))
}