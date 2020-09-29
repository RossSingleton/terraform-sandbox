provider "vsphere" {
  user           = var.vsphere_user
  password       = var.vsphere_password
  vsphere_server = var.vsphere_server

#   If you have a self-signed cert
#   allow_unverified_ssl = true
}

resource "vsphere_virtual_machine" "vm" {
  name             = "terraform-test"
  resource_pool_id = var.resource_pool

  num_cpus = var.num_cpus
  memory   = var.memory
  guest_id = var.guest_id

  network_interface {
    network_id = var.network
  }

  disk {
    label = "disk0"
    size  = var.disk_size
  }
}