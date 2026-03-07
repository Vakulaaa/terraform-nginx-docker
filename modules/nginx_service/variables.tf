variable "container_name" {
  description = "container name"
  type = string
}

variable "image_name" {
  description = "Docker container image"
  type = string
  default = "nginx:alpine"
}

variable "external_port" {
  description = "Host port"
  type = number
}

variable "internal_port" {
  description = "container port"
  type = number
  default = 80
}