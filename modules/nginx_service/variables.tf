variable "container_name" {
  description = "Container name"
  type        = string
}

variable "image_name" {
  description = "Docker container image"
  type        = string
  default     = "nginx:alpine"
}

variable "external_port" {
  description = "Host port published by Docker"
  type        = number

  validation {
    condition     = var.external_port >= 1024 && var.external_port <= 65535
    error_message = "external_port must be between 1024 and 65535."
  }
}

variable "internal_port" {
  description = "Container port"
  type        = number
  default     = 80

  validation {
    condition     = var.internal_port >= 1 && var.internal_port <= 65535
    error_message = "internal_port must be between 1 and 65535."
  }
}
