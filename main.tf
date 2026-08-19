terraform {
  required_version = "~> 1.15.0"
}

provider "yandex" {
  service_account_key_file = "/home/igor/key.json"
  cloud_id  = var.yc_cloud_id
  folder_id = var.yc_folder_id
  zone      = var.yc_zone
}

resource "yandex_compute_image" "ubuntu" {
  source_family = var.image_family
}

resource "yandex_compute_instance" "web" {
  allow_stopping_for_update = true
  name        = var.vm_web_name
  platform_id = var.vm_web_platform_id
  zone        = var.yc_zone

  resources {
    cores         = var.vm_web_cores
    memory        = var.vm_web_memory
    core_fraction = 20
  }

  boot_disk {
    initialize_params {
      image_id = yandex_compute_image.ubuntu.id
      size     = var.vm_web_disk_size
      type     = var.vm_web_disk_type
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }

  metadata = {
    serial-port-enable = 1
    ssh-keys           = "ubuntu:${var.vms_ssh_public_root_key}"
  }
}

resource "yandex_compute_instance" "db" {
  allow_stopping_for_update = true
  name        = var.vm_db_name
  platform_id = var.vm_db_platform_id
  zone        = var.vm_db_zone

  resources {
    cores         = var.vm_db_cores
    memory        = var.vm_db_memory
    core_fraction = var.vm_db_core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = yandex_compute_image.ubuntu.id
      size     = var.vm_db_disk_size
      type     = var.vm_db_disk_type
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }

  metadata = {
    serial-port-enable = 1
    ssh-keys           = "ubuntu:${var.vms_ssh_public_root_key}"
  }
}
