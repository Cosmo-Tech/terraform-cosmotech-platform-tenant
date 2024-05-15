variable "namespace" {
  type = string
}

variable "api_replicas" {
  type = number
}

variable "monitoring_enabled" {
  type = bool
}

variable "monitoring_namespace" {
  type = string
}

variable "client_id" {
  type    = string
  default = ""
}

variable "client_secret" {
  type    = string
  default = ""
}

variable "tenant_id" {
  type = string
}

variable "api_dns_name" {
  type = string
}

variable "tls_secret_name" {
  type = string
}

variable "redis_admin_password" {
  type = string
}

variable "acr_login_password" {
  type    = string
  default = ""
}

variable "acr_login_server" {
  type    = string
  default = ""
}

variable "acr_login_username" {
  type    = string
  default = ""
}

variable "cosmos_key" {
  type    = string
  default = ""
}

variable "cosmos_uri" {
  type    = string
  default = ""
}

variable "adx_uri" {
  type    = string
  default = ""
}

variable "adx_ingestion_uri" {
  type    = string
  default = ""
}

variable "eventbus_uri" {
  type    = string
  default = ""
}

variable "storage_account_key" {
  type    = string
  default = ""
}

variable "storage_account_name" {
  type    = string
  default = ""
}

variable "network_client_id" {
  type    = string
  default = ""
}

variable "network_client_secret" {
  type    = string
  default = ""
}

variable "cosmotech_api_ingress_enabled" {
  type = bool
}

variable "redis_port" {
  type = number
}

variable "helm_chart" {
  type    = string
  default = "cosmotech-api-chart"
}

variable "helm_repository" {
  type    = string
  default = "oci://ghcr.io/cosmo-tech"
}

variable "cosmotech_api_version_path" {
  type = string
}

variable "cosmotech_api_version" {
  type = string
}

variable "helm_release_name" {
  type    = string
  default = "cosmotech-api"
}

variable "chart_package_version" {
  type = string
}

variable "argo_service_account" {
  type    = string
  default = ""
}

variable "argo_release_name" {
  type    = string
  default = "argo"
}

variable "is_multitenant" {
  type    = bool
  default = true
}

variable "use_internal_result_services" {
  type    = bool
  default = false
}

variable "tenant_resource_group" {
  type = string
}

variable "postgresql_release_name" {
  type = string
}

variable "postgresql_reader_username" {
  type = string
}

variable "postgresql_reader_password" {
  type = string
}

variable "postgresql_writer_username" {
  type = string
}

variable "postgresql_writer_password" {
  type = string
}

variable "postgresql_admin_username" {
  type = string
}

variable "postgresql_admin_password" {
  type = string
}

variable "rabbitmq_release_name" {
  type = string
}

variable "rabbitmq_listener_username" {
  type = string
}

variable "rabbitmq_listener_password" {
  type = string
}

variable "rabbitmq_sender_username" {
  type = string
}

variable "rabbitmq_sender_password" {
  type = string
}
