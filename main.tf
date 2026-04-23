module "nginx_service" {
  source = "./modules/nginx_service"

  container_name = "tf-nginx-${terraform.workspace}"
  external_port  = var.external_port
  image_name     = var.image_name
  internal_port  = var.internal_port
}
