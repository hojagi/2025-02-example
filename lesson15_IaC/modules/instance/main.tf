resource "yandex_compute_disk" "boot-disk-1" {
  name     = "boot-disk-1"
  type     = "network-hdd"
  zone     = var.zone
  size     = "20"
  image_id = "fd8kc2n656prni2cimp5"
}

resource "yandex_compute_instance" "vm-1" {
  name = var.hostname
  zone        = var.zone

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    disk_id = yandex_compute_disk.boot-disk-1.id
  }

  network_interface {
    subnet_id = var.subnet_id
    # subnet_id = "e9bi1vo3i3vg4ris2c0p"
    nat       = true
  }

  metadata = {
    ssh-keys = var.ssh_keys
  }

}
