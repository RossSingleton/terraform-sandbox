variable "vsphere_user" {
    description = "The user to access VSphere"
    type = string
}

variable "vsphere_password" {
    description = "The password to access VSphere"
    type = string
}

variable "vsphere_server" {
    description = "The server to access VSphere"
    type = string
}

variable "resource_pool" {
    description = "ID of the resource pool"
    type = string
}

variable "cpu_num" {
    description = "Number of CPU's to provision"
    type = number
    default = 2
}

variable "memory" {
    description = "Amount of memory to allocate"
    type = number
    default = 1028
}

variable "network" {
    description = "Network ID to connnect to"}
    type = string
}

variable "guest_id" {
    description = "ID of operating system to use"
    type = string
    default = "windows9Server64Guest"
}

variable "disk_size" {
    description = "Size of the Disk in GB"
    type = number
    default = 80
}