variable "resource_group_name" {
  description = "Nazwa grupy zasobów."
}

variable "location" {
  description = "Lokalizacja zasobów."
}

variable "cluster_name" {
  description = "Nazwa klastra AKS."
}

variable "node_count" {
  description = "Liczba węzłów w klastrze AKS."
  type        = number
}

variable "vm_size" {
  description = "Rozmiar węzła w klastrze AKS."
}

variable "app_image" {
  description = "Obraz kontenera aplikacji."
}