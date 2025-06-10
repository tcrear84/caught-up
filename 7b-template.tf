# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_region_instance_template
# https://developer.hashicorp.com/terraform/language/functions/file
# Google Compute Engine: Regional Instance Template
#this is for iowa
resource "google_compute_region_instance_template" "app" {
  name         = "app-template-terraform-us"
  region       = "us-central1"
  description  = "This template is used to clone lizzo"
  machine_type = "e2-medium"

  # Create a new disk from an image and set as boot disk
  disk {
    source_image = "debian-cloud/debian-12"
    boot         = true
  }

  # Network Configurations 
  network_interface {
    subnetwork = google_compute_subnetwork.pbc-chi-us.id
    /*access_config {
      # Include this section to give the VM an external IP address
    } */
  }

  # Install Webserver using file() function
  metadata_startup_script = file("./startup.sh")
}


#this is for toyko
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_region_instance_template
# https://developer.hashicorp.com/terraform/language/functions/file
# Google Compute Engine: Regional Instance Template
resource "google_compute_region_instance_template" "app-toyko" {
  name         = "app-template-terraform-toyko"
  region      = "asia-northeast1"
  description  = "This template is used to clone lizzo"
  machine_type = "e2-medium"

  # Create a new disk from an image and set as boot disk
  disk {
    source_image = "debian-cloud/debian-12"
    boot         = true
  }

  # Network Configurations 
  network_interface {
    subnetwork = google_compute_subnetwork.pbc-chi-toyko.id
    /*access_config {
      # Include this section to give the VM an external IP address
    } */
  }

  # Install Webserver using file() function
  metadata_startup_script = file("./startup.sh")
}

resource "google_compute_region_instance_template" "app-toyko2" {
  name         = "app-template-terraform-toyko2"
  region      = "asia-northeast1"
  description  = "This template is used to clone lizzo"
  machine_type = "e2-medium"

  # Create a new disk from an image and set as boot disk
  disk {
    source_image = "debian-cloud/debian-12"
    boot         = true
  }

  # Network Configurations 
  network_interface {
    subnetwork = google_compute_subnetwork.pbc-chi-toyko2.id
    /*access_config {
      # Include this section to give the VM an external IP address
    } */
  }

  # Install Webserver using file() function
  metadata_startup_script = file("./startup.sh")
}
#this is for brazil

resource "google_compute_region_instance_template" "app-brazil" {
  name         = "app-template-terraform-brazil"
  region      = "southamerica-east1"
  description  = "This template is used to clone lizzo"
  machine_type = "e2-medium"

  # Create a new disk from an image and set as boot disk
  disk {
    source_image = "debian-cloud/debian-12"
    boot         = true
  }

  # Network Configurations 
  network_interface {
    subnetwork = google_compute_subnetwork.pbc-chi-brazil.id
    /*access_config {
      # Include this section to give the VM an external IP address
    } */
  }

  # Install Webserver using file() function
  metadata_startup_script = file("./startup.sh")
}