terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.63"
    }
  }

  backend "azurerm" {
    resource_group_name  = "bootstrap"
    storage_account_name = "tf4pinmqgfv7ncm"
    container_name       = "sf4pinmqgfv7ncm"
    key                  = "dotf.dev.tfstate"
  }
}

provider "azurerm" {
  features {}
}

provider "digitalocean" {
}
