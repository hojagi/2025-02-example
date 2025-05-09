# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "fhm5oae0gf0vl4fpfnd0"
resource "yandex_compute_instance" "imported" {
  allow_recreate            = null
  allow_stopping_for_update = null
  description               = null
  folder_id                 = "b1g4irnljhuftrnnkos6"
  gpu_cluster_id            = null
  hostname                  = "compute-vm-2-2-20-hdd-1742920008394"
  labels                    = {}
  maintenance_grace_period  = null
  maintenance_policy        = null
  metadata = {
    install-unified-agent = "0"
    serial-port-enable    = "0"
    ssh-keys              = "ubuntu:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCnhuaFtPxHkHUMhJTSe3gFeospx977i/3wmDulp2wIZCUtM+twQVZaARQ/tJCYSeuASqcq+2cTFH4d7CydlvL9GIdmqtrQW0bluD0cgmXkpPK0hbi2IZ2FUNtCTB1LqnJ/jahKLUUSXljLX8qVZx8dI++fwTC01Hy/KrvBYc8Ez/QessdsImSAYbKMEw5ndafDrC4ut/HkYYvBFaYjQeLjoA/PCjGiL0HyXxU7Xj84et/5KFICSNf7PEfpoGmqyrghMcbSXL+3k3VrDHUtWGqnncA3fcNPHGvlhPb+Hq8isaaX9Cdp/NP8sfKHgn4u3mfqX9j+bhYno3tRKefQvACg80/M1woyXQ9V/7wXwPmqQQGG5bhlgf73Sg/xPRnI7BEC/+nw5Rl2mXVySQukFiJtffH7OlYUnYqg7x4AHnnLWcQ9+Glv0JwOsarUNiGHpe8QKdYTzXEaGrsCWEQ9a4vcLLSQnWgHJdgkNRSHcngixI1OTCDvn1PlvBy43h18IO0= vagrant@iac"
    user-data             = "#cloud-config\ndatasource:\n Ec2:\n  strict_id: false\nssh_pwauth: no\nusers:\n- name: ubuntu\n  sudo: ALL=(ALL) NOPASSWD:ALL\n  shell: /bin/bash\n  ssh_authorized_keys:\n  - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCnhuaFtPxHkHUMhJTSe3gFeospx977i/3wmDulp2wIZCUtM+twQVZaARQ/tJCYSeuASqcq+2cTFH4d7CydlvL9GIdmqtrQW0bluD0cgmXkpPK0hbi2IZ2FUNtCTB1LqnJ/jahKLUUSXljLX8qVZx8dI++fwTC01Hy/KrvBYc8Ez/QessdsImSAYbKMEw5ndafDrC4ut/HkYYvBFaYjQeLjoA/PCjGiL0HyXxU7Xj84et/5KFICSNf7PEfpoGmqyrghMcbSXL+3k3VrDHUtWGqnncA3fcNPHGvlhPb+Hq8isaaX9Cdp/NP8sfKHgn4u3mfqX9j+bhYno3tRKefQvACg80/M1woyXQ9V/7wXwPmqQQGG5bhlgf73Sg/xPRnI7BEC/+nw5Rl2mXVySQukFiJtffH7OlYUnYqg7x4AHnnLWcQ9+Glv0JwOsarUNiGHpe8QKdYTzXEaGrsCWEQ9a4vcLLSQnWgHJdgkNRSHcngixI1OTCDvn1PlvBy43h18IO0= vagrant@iac"
  }
  name                      = "compute-vm-2-2-20-hdd-1742920008394"
  network_acceleration_type = "standard"
  platform_id               = "standard-v3"
  service_account_id        = null
  zone                      = "ru-central1-a"
  boot_disk {
    auto_delete = true
    device_name = "fhmhga36b35cvcs4knr0"
    disk_id     = "fhmhga36b35cvcs4knr0"
    mode        = "READ_WRITE"
    initialize_params {
      block_size  = 4096
      description = null
      image_id    = "fd8ou6hurlbfqmi57ofd"
      kms_key_id  = null
      name        = "disk-ubuntu-24-04-lts-1742920009365"
      size        = 20
      snapshot_id = null
      type        = "network-hdd"
    }
  }
  metadata_options {
    aws_v1_http_endpoint = 1
    aws_v1_http_token    = 2
    gce_http_endpoint    = 1
    gce_http_token       = 1
  }
  network_interface {
    index              = 0
    # ip_address         = "10.128.0.19"
    ipv4               = true
    ipv6               = false
    ipv6_address       = null
    nat                = true
    # nat_ip_address     = "158.160.109.138"
    security_group_ids = []
    subnet_id          = "e9bi1vo3i3vg4ris2c0p"
  }
  # placement_policy {
  #   host_affinity_rules       = []
  #   placement_group_id        = null
  #   placement_group_partition = 0
  # }
  resources {
    core_fraction = 100
    cores         = 2
    gpus          = 0
    memory        = 2
  }
  scheduling_policy {
    preemptible = false
  }
}
