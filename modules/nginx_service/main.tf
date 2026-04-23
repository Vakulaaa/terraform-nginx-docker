resource "docker_image" "this" {
  name = var.image_name
}

resource "docker_container" "nginx" {
  name  = var.container_name
  image = docker_image.this.image_id

  ports {
    external = var.external_port
    internal = var.internal_port
  }
}
