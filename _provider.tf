variable "digitalocean_token" {}

terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 1.22.1"
    }
  }
}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = var.digitalocean_token
}

