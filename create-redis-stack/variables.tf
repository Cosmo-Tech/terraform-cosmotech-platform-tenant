variable "redis_admin_password" {
  type = string
}

variable "namespace" {
  type = string
}

variable "redis_disk_name" {
  type = string
}

variable "managed_disk_id" {
  type = string
}

variable "helm_repo_url" {
  type    = string
  default = "https://charts.bitnami.com/bitnami"
}

variable "helm_release_name" {
  type    = string
  default = "cosmotechredis"
}

variable "helm_chart_name" {
  type    = string
  default = "redis"
}

variable "redis_version" {
  type    = string
  default = "17.8.0"
}

variable "redis_pv_capacity" {
  type = string
}

variable "version_redis_cosmotech" {
  type    = string
  default = "1.0.8"
}

variable "is_bare_metal" {
  type = bool
}
