variable "vpc_network_name" {
  type = string
  default = "default"
}

variable "vpc_network_zone" {
  type = list(string)
  default = [ "ru-central1-a", "ru-central1-b", "ru-central1-c" ]
}