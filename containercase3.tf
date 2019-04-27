resource "docker_image" "httpd" {
  name = "httpd"
}

resource "docker_container" "httpd" {
  name = "httpd-1"
  image = "${docker_image.httpd.latest}"

  ports {
    internal = 80
    external = 8181
  }

  upload {
    content = "${file("index.html")}"
    file = "/usr/local/apache2/htdocs/index.html"
  }
}
