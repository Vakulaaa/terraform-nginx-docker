variable "external_port" {
  description = "Host port exposed for Nginx container"
  type        = number
  default     = 8080

  validation {
    condition     = var.external_port >= 1024 && var.external_port <= 65535
    error_message = "external_port must be between 1024 and 65535."
  }
}

variable "internal_port" {
  description = "Port exposed by the container"
  type        = number
  default     = 80

  validation {
    condition     = var.internal_port >= 1 && var.internal_port <= 65535
    error_message = "internal_port must be between 1 and 65535."
  }
}

variable "image_name" {
  description = "Container image name"
  type        = string
  default     = "nginx:1.27-alpine"
}

variable "docker_host" {
  description = "Optional Docker daemon socket/host (for remote Docker)"
  type        = string
  default     = null
}
