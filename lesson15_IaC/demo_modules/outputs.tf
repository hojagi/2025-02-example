# output "vpc" {
#   value = module.network.vpc
# }

# output "subnets" {
#   value = module.network.subnets
# }

output "public_ip" {
  value = module.instance.public_ip
}