resource "yandex_compute_instance" "imported" {
    folder_id                 = "b1g4irnljhuftrnnkos6"
    hostname                  = "compute-vm-2-2-20-hdd-1742919020667"
    labels                    = {}
    metadata                  = {
        "ssh-keys"              = "ubuntu:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCnhuaFtPxHkHUMhJTSe3gFeospx977i/3wmDulp2wIZCUtM+twQVZaARQ/tJCYSeuASqcq+2cTFH4d7CydlvL9GIdmqtrQW0bluD0cgmXkpPK0hbi2IZ2FUNtCTB1LqnJ/jahKLUUSXljLX8qVZx8dI++fwTC01Hy/KrvBYc8Ez/QessdsImSAYbKMEw5ndafDrC4ut/HkYYvBFaYjQeLjoA/PCjGiL0HyXxU7Xj84et/5KFICSNf7PEfpoGmqyrghMcbSXL+3k3VrDHUtWGqnncA3fcNPHGvlhPb+Hq8isaaX9Cdp/NP8sfKHgn4u3mfqX9j+bhYno3tRKefQvACg80/M1woyXQ9V/7wXwPmqQQGG5bhlgf73Sg/xPRnI7BEC/+nw5Rl2mXVySQukFiJtffH7OlYUnYqg7x4AHnnLWcQ9+Glv0JwOsarUNiGHpe8QKdYTzXEaGrsCWEQ9a4vcLLSQnWgHJdgkNRSHcngixI1OTCDvn1PlvBy43h18IO0= vagrant@iac"
        "user-data"             = <<-EOT
            #cloud-config
            datasource:
             Ec2:
              strict_id: false
            ssh_pwauth: no
            users:
            - name: ubuntu
              sudo: ALL=(ALL) NOPASSWD:ALL
              shell: /bin/bash
              ssh_authorized_keys:
              - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCnhuaFtPxHkHUMhJTSe3gFeospx977i/3wmDulp2wIZCUtM+twQVZaARQ/tJCYSeuASqcq+2cTFH4d7CydlvL9GIdmqtrQW0bluD0cgmXkpPK0hbi2IZ2FUNtCTB1LqnJ/jahKLUUSXljLX8qVZx8dI++fwTC01Hy/KrvBYc8Ez/QessdsImSAYbKMEw5ndafDrC4ut/HkYYvBFaYjQeLjoA/PCjGiL0HyXxU7Xj84et/5KFICSNf7PEfpoGmqyrghMcbSXL+3k3VrDHUtWGqnncA3fcNPHGvlhPb+Hq8isaaX9Cdp/NP8sfKHgn4u3mfqX9j+bhYno3tRKefQvACg80/M1woyXQ9V/7wXwPmqQQGG5bhlgf73Sg/xPRnI7BEC/+nw5Rl2mXVySQukFiJtffH7OlYUnYqg7x4AHnnLWcQ9+Glv0JwOsarUNiGHpe8QKdYTzXEaGrsCWEQ9a4vcLLSQnWgHJdgkNRSHcngixI1OTCDvn1PlvBy43h18IO0= vagrant@iac
        EOT
    }
    name                      = "compute-vm-2-2-20-hdd-1742919020667"
    platform_id               = "standard-v3"
    zone                      = "ru-central1-a"

    boot_disk {
        auto_delete = true
        device_name = "fhm0vm9nbdd1n73m05j1"
        disk_id     = "fhm0vm9nbdd1n73m05j1"
        mode        = "READ_WRITE"

    }


    network_interface {
        index              = 0
        ipv4               = true
        ipv6               = false
        nat                = true
        security_group_ids = []
        subnet_id          = "e9bi1vo3i3vg4ris2c0p"
    }

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
