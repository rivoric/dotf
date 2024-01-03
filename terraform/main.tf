data "azurerm_client_config" "current" {}

resource "digitalocean_container_registry" "dicci" {
  name                   = "diccicr"
  subscription_tier_slug = "starter"
}
