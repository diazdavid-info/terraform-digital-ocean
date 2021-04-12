#
# Creamos el droplet

resource "digitalocean_droplet" "testing" {
  image     = "debian-10-x64"
  name      = "debian-1"
  region    = "lon1"
  size      = "s-1vcpu-1gb"
  user_data = file("userdata.yaml")
  ssh_keys  = [digitalocean_ssh_key.ssh-key.fingerprint]
}
