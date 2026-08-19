variable "vm_web_name" {
  description = "Name of the web VM"
  type        = string
  default     = "netology-develop-platform-web"
}

variable "vm_web_cores" {
  description = "Number of CPU cores for web VM"
  type        = number
  default     = 2
}

variable "vm_web_memory" {
  description = "Memory in GB for web VM"
  type        = number
  default     = 1
}

variable "vm_web_core_fraction" {
  description = "Core fraction for web VM"
  type        = number
  default     = 50
}

variable "vm_web_disk_size" {
  description = "Disk size in GB for web VM"
  type        = number
  default     = 10
}

variable "vm_web_disk_type" {
  description = "Disk type for web VM"
  type        = string
  default     = "network-hdd"
}

variable "vm_web_platform_id" {
  description = "Platform ID for web VM"
  type        = string
  default     = "standard-v3"
}

variable "vm_db_name" {
  description = "Name of the database VM"
  type        = string
  default     = "netology-develop-platform-db"
}

variable "vm_db_cores" {
  description = "Number of CPU cores for database VM"
  type        = number
  default     = 2
}

variable "vm_db_memory" {
  description = "Memory in GB for database VM"
  type        = number
  default     = 2
}

variable "vm_db_core_fraction" {
  description = "Core fraction for database VM"
  type        = number
  default     = 50
}

variable "vm_db_disk_size" {
  description = "Disk size in GB for database VM"
  type        = number
  default     = 10
}

variable "vm_db_disk_type" {
  description = "Disk type for database VM"
  type        = string
  default     = "network-hdd"
}

variable "vm_db_platform_id" {
  description = "Platform ID for database VM"
  type        = string
  default     = "standard-v3"
}

variable "vm_db_zone" {
  description = "Zone for database VM"
  type        = string
  default     = "ru-central1-a"
}
