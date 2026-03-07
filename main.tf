module "nginx_service" {
  source = "./modules/nginx_service"

  container_name = "tf-nginx-${terraform.workspace}"
  external_port  = var.external_port
}