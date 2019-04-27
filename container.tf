resource "docker_image" "nginx" {
  name = "nginx"
}

resource "docker_container" "nginx" {
  name = "nginx-1"
  image = "${docker_image.nginx.latest}"
}
