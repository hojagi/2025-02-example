module "network" {
    source = "../modules/network"
    vpc_network_name = var.vpc_network_name
    vpc_network_zone = var.vpc_network_zone
}

module "instance" {
    source = "../modules/instance"
    subnet_id = module.network.subnets[var.selected_zone].subnet_id
    zone = var.selected_zone
    ssh_keys = "ubuntu:${file("./keys/lesson_iac_yc_rsa.pub")}"
    hostname = "levelup"
}