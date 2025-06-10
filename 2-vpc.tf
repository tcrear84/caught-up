# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_project_service

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network

resource "google_compute_network" "pbc-chi" {
  name                            = "pbc-chi"
  routing_mode                    = "REGIONAL"
  auto_create_subnetworks         = false
  mtu                             = 1460
  delete_default_routes_on_create = false

}

resource "google_compute_network" "papper-boy-committee" {
  name                            = "papper-boy-committee"
  routing_mode                    = "REGIONAL"
  auto_create_subnetworks         = false
  mtu                             = 1460
  delete_default_routes_on_create = false

}