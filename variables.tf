variable "yc_cloud_id" {
  description = "Yandex Cloud cloud ID"
  type        = string
}

variable "yc_folder_id" {
  description = "Yandex Cloud folder ID"
  type        = string
}

variable "yc_zone" {
  description = "Yandex Cloud default zone"
  type        = string
  default     = "ru-central1-a"
}

variable "subnet_id" {
  description = "Subnet ID for VM"
  type        = string
}

variable "image_family" {
  description = "Image family for VM"
  type        = string
  default     = "ubuntu-2204-lts"
}

variable "vms_ssh_public_root_key" {
  description = "Public SSH key for VM access"
  type        = string
}

variable "vms_resources" {
  description = "Resources configuration for all VMs"
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
    disk_size     = number
    disk_type     = string
    platform_id   = string
    zone          = string
  }))
}

variable "vms_metadata" {
  description = "Metadata configuration for all VMs"
  type = object({
    serial-port-enable = number
    ssh-keys           = string
  })
}
