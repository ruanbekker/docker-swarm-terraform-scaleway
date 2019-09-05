variable "docker_version" {
  default = "18.06.3~ce~3-0~debian"
}

variable "region" {
  default = "ams1"
}

variable "manager_instance_type" {
  default = "START1-M"
}

variable "worker_instance_type" {
  default = "START1-M"
}

variable "worker_instance_count" {
  default = 2
}

variable "docker_api_ip" {
  default = "127.0.0.1"
}
