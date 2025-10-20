variable "resource_group_name" {
  default = "aks-rg"
}

variable "location" {
  default = "East US"
}

variable "cluster_name" {
  default = "demo-aks-cluster"
}

variable "acr_id" {
  description = "Resource ID of ACR if attaching one"
  default     = ""
}
