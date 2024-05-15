locals {
  # host                   = local.kube_config.0.host
  # client_certificate     = base64decode(local.kube_config.0.client_certificate)
  # client_key             = base64decode(local.kube_config.0.client_key)
  # cluster_ca_certificate = base64decode(local.kube_config.0.cluster_ca_certificate)
  tags = {
    vendor      = "cosmotech"
    stage       = var.project_stage
    customer    = var.customer_name
    project     = var.project_name
    cost_center = var.cost_center
  }
}

provider "kubernetes" {
  # host                   = local.host
  # client_certificate     = local.client_certificate
  # client_key             = local.client_key
  # cluster_ca_certificate = local.cluster_ca_certificate

  config_path = "config"
}

provider "helm" {
  kubernetes {
    # host                   = local.host
    # client_certificate     = local.client_certificate
    # client_key             = local.client_key
    # cluster_ca_certificate = local.cluster_ca_certificate

    config_path = "config"
  }
}

provider "kubectl" {
  # host                   = local.host
  # client_certificate     = local.client_certificate
  # client_key             = local.client_key
  # cluster_ca_certificate = local.cluster_ca_certificate

  config_path      = "config"
  load_config_file = true
}

locals {
  # kube_config     = data.azurerm_kubernetes_cluster.current.kube_config
  tls_secret_name = var.tls_certificate_type == "let_s_encrypt" ? "letsencrypt-prod" : "custom-tls-secret"
}