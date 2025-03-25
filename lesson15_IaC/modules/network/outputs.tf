output "vpc" {
  value = data.yandex_vpc_network.this
}

output "subnets" {
  value = data.yandex_vpc_subnet.this
}