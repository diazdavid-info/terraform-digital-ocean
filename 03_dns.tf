# Add new domain
resource "digitalocean_domain" "diazdavid" {
  name = "diazdavid.es"
}

# Add a record to the domain
resource "digitalocean_record" "wordpress" {
  domain = digitalocean_domain.diazdavid.name
  type   = "A"
  name   = "wordpress"
  ttl    = "30"
  value  = digitalocean_droplet.testing.ipv4_address
}

resource "digitalocean_record" "wordpress2" {
  domain = digitalocean_domain.diazdavid.name
  type   = "A"
  name   = "wordpress2"
  ttl    = "30"
  value  = digitalocean_droplet.testing.ipv4_address
}

resource "digitalocean_record" "wordpress3" {
  domain = digitalocean_domain.diazdavid.name
  type   = "A"
  name   = "wordpress3"
  ttl    = "30"
  value  = digitalocean_droplet.testing.ipv4_address
}
