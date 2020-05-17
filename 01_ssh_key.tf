#
# Exportamos nuestra key SSH

resource "digitalocean_ssh_key" "ssh-key" {
  name       = "ssh-key"
  public_key = "${file("~/.ssh/terraform.pub")}"
}

