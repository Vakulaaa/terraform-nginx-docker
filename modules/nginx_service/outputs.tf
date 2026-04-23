output "container_name" {
  description = "Container name"
  value       = docker_container.nginx.name
}

output "container_id" {
  description = "Container ID"
  value       = docker_container.nginx.id
}
