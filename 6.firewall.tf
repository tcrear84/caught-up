## https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall

#FW rule for ssh
resource "google_compute_firewall" "allow-ssh" {
  name    = "allow-ssh"
  network = google_compute_network.pbc-chi.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}


##fw for http and https

resource "google_compute_firewall" "allow-http" {
  name    = "allow-http"
  network = google_compute_network.pbc-chi.name

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
}


##fw for ping

resource "google_compute_firewall" "allow-ping" {
  name    = "allow-ping"
  network = google_compute_network.pbc-chi.name

  allow {
    protocol = "icmp"
  }
    

  source_ranges = ["0.0.0.0/0"]
}



