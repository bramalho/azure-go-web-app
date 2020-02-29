variable "prefix" {
  type    = string
  default = "azure-go-web-app"
}

variable "location" {
  type    = string
  default = "westeurope"
}

variable "docker_image" {
  type    = string
  default = "bramalho/azure-go-web-app"
}

variable "docker_image_version" {
  type    = string
  default = "latest"
}