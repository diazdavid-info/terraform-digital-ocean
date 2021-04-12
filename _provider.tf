terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}

variable "digitalocean_token" {}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = var.digitalocean_token
}

