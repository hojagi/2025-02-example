variable "vpc_network_name" {
  type = string
}

variable "vpc_network_zone" {
  type = list(string)
}

variable "selected_zone" {
  type = string
  default = "ru-central1-a"
}