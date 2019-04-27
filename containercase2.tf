resource "docker_image" "nginx" {
  name = "nginx"
}

resource "docker_container" "nginx" {
  name = "nginx-2"
  image = "${docker_image.nginx.latest}"

  ports {
    internal = 80
    external = 8080
  }
}
