variable "external_port" {
  description = "Host port for nginx conteiner"
  type        = number
  default     = 8080

  validation {
    condition     = var.external_port >= 1024 && var.external_port <= 65536
    error_message = "external port must be between 1024 and 65536."
  }
}
