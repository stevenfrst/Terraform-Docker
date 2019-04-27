resource "docker_image" "httpd" {
  name = "httpd"
}

resource "docker_container" "httpd" {
  name = "httpd-2"
  image = "${docker_image.httpd.latest}"

  ports {
    internal = 80
    external = 8282
  }

  volumes {
    host_path = "/data/web"
    container_path = "/usr/local/apache2/htdocs/"
  }
}
