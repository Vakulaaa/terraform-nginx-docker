output "environment" {
  description = "Current Terraform workspace"
  value       = terraform.workspace
}

output "container_name" {
  description = "Name of nginx container"
  value       = module.nginx_service.container_name
}

output "container_id" {
  description = "Id of nginx container"
  value       = module.nginx_service.container_id
}

output "app_url" {
  description = "Url for current environment"
  value       = "http://localhost:${var.external_port}"
}
