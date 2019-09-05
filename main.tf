provider "scaleway" {
  region = "${var.region}"
}

data "scaleway_bootscript" "debian" {
  architecture = "x86_64"
  name = "x86_64 mainline 4.15.11 rev1"
}

data "scaleway_image" "debian_stretch" {
  architecture = "x86_64"
  name         = "Debian Stretch"
}

data "template_file" "docker_conf" {
  template = "${file("conf/docker.tpl")}"

  vars {
    ip = "${var.docker_api_ip}"
  }
}
