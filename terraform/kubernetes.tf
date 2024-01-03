resource "digitalocean_kubernetes_cluster" "kubernetes_cluster" {
  name    = "diccikube"
  region  = var.region
  version = "1.22.8-do.1"

  tags = ["k8s"]

  # This default node pool is mandatory
  node_pool {
    name       = "worker-pool"
    size       = "s-2vcpu-2gb"
    auto_scale = true
    min_nodes  = 1
    max_nodes  = 3

    tags       = ["node-pool-tag"]
  }
}
