output "subscription_id" {
  value = data.azurerm_client_config.current.subscription_id
}

output "cluster-id" {
  value = digitalocean_kubernetes_cluster.kubernetes_cluster.id
}
