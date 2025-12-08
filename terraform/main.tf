resource "null_resource" "remove_old_container" {
  provisioner "local-exec" {
    command = "docker rm -f demo-devops || true"
  }
}

resource "docker_image" "nginx" {
  name         = "nginx:alpine"
  keep_locally = true
}
resource "docker_container" "site" {
  name  = "demo-devops"
  image = docker_image.nginx.image_id

  depends_on = [null_resource.remove_old_container]

  ports {
    internal = 80
    external = 8081
  }

  volumes {
    host_path      = "C:/Users/LENOVO/Documents/GitHub/mon-projet-terraform/Mon-projet/demo_devops6"
    container_path = "/usr/share/nginx/html"
    read_only      = false
  }

  restart = "unless-stopped"
}
