variable "vms" {
  description = "List of VM definitions"
  type = list(object({
    vm_name     = string
    vm_pass     = string
    vm_size     = string
    subnet      = string
    location    = string
    rg_name     = string
    disk_name   = optional(string)
    disk_size   = optional(number)
    lun         = optional(number)
    nsg_name    = optional(string)
    sec_rules   = optional(list(object({
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
    public_ip   = optional(bool, true)
    ssh_key     = optional(string)
  }))
}
