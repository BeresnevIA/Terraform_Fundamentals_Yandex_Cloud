locals {
  web_name = "${var.vm_web_name}-${var.vm_web_cores}cpu-${var.vm_web_memory}gib"
  db_name  = "${var.vm_db_name}-${var.vm_db_cores}cpu-${var.vm_db_memory}gib"
}
