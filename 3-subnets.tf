##papper-boy-committee subnets

resource "google_compute_subnetwork" "papper-boy-committee-us" {
  name                     = "papper-boy-committee-us"
  ip_cidr_range            = "10.97.255.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.papper-boy-committee.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "papper-boy-committee-toyko" {
  name                     = "papper-boy-committee-toyko"
  ip_cidr_range            = "10.97.25.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.papper-boy-committee.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "papper-boy-committee-toyko2" {
  name                     = "papper-boy-committee-toyko2"
  ip_cidr_range            = "10.97.88.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.papper-boy-committee.id
  private_ip_google_access = true
  }

  resource "google_compute_subnetwork" "papper-boy-committee-brazil" {
  name                     = "papper-boy-committee-brazil"
  ip_cidr_range            = "10.97.184.0/24"
  region                   = "southamerica-east1"
  network                  = google_compute_network.papper-boy-committee.id
  private_ip_google_access = true
  }


#pbc-chi subnets
resource "google_compute_subnetwork" "pbc-chi-us" {
  name                     = "pbc-chi-us"
  ip_cidr_range            = "10.97.205.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.pbc-chi.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "pbc-chi-toyko" {
  name                     = "pbc-chi-toyko"
  ip_cidr_range            = "10.97.84.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.pbc-chi.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "pbc-chi-toyko2" {
  name                     = "pbc-chi-toyko2"
  ip_cidr_range            = "10.97.98.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.pbc-chi.id
  private_ip_google_access = true
}

  resource "google_compute_subnetwork" "pbc-chi-brazil" {
  name                     = "pbc-chi-brazil"
  ip_cidr_range            = "10.97.123.0/24"
  region                   = "southamerica-east1"
  network                  = google_compute_network.pbc-chi.id
  private_ip_google_access = true
}

 resource "google_compute_subnetwork" "pbc-chi-spain" {
  name                     = "pbc-chi-spain"
  ip_cidr_range            = "10.97.175.0/24"
  region                   = "europe-southwest1"
  network                  = google_compute_network.pbc-chi.id
  private_ip_google_access = true
}

 resource "google_compute_subnetwork" "pbc-chi-toranto" {
  name                     = "pbc-chi-toranto"
  ip_cidr_range            = "10.95.112.0/24"
  region                   = "northamerica-northeast1"
  network                  = google_compute_network.pbc-chi.id
  private_ip_google_access = true
}

 resource "google_compute_subnetwork" "pbc-chi-vegas" {
  name                     = "pbc-chi-vegas"
  ip_cidr_range            = "10.99.151.0/24"
  region                   = "us-west1"
  network                  = google_compute_network.pbc-chi.id
  private_ip_google_access = true
}


# Regional Proxy-Only Subnet 
# Required for Regional Application Load Balancer for traffic offloading
resource "google_compute_subnetwork" "regional_proxy_subnet" {
  name          = "regional-proxy-subnet"
  region        = "us-central1"
  ip_cidr_range = "192.168.225.0/24"
  # This purpose reserves this subnet for regional Envoy-based load balancers
  purpose       = "REGIONAL_MANAGED_PROXY"
  network       = google_compute_network.pbc-chi.id
  role          = "ACTIVE"
}