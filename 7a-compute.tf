
resource "google_compute_instance" "pbc-instance" {
  name         = "pbc-instance"
  machine_type = "n2-standard-2"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
     }
  }
  network_interface {
    subnetwork = google_compute_subnetwork.pbc-chi-us.name
    access_config {
      // Ephemeral public IP
    }
  }


  metadata_startup_script = file("./startup.sh")


}


resource "google_compute_instance" "pbc-instance-toyko" {
  name         = "pbc-instance-toyko"
  machine_type = "n2-standard-2"
  zone         = "asia-northeast1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
     }
  }
  network_interface {
    subnetwork = google_compute_subnetwork.pbc-chi-toyko.name
    access_config {
      // Ephemeral public IP
    }
  }


  metadata_startup_script = file("./startup.sh")


}

resource "google_compute_instance" "pbc-instance-brazil" {
  name         = "pbc-instance-brazil"
  machine_type = "n2-standard-2"
  zone         = "southamerica-east1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
     }
  }
  network_interface {
    subnetwork = google_compute_subnetwork.pbc-chi-brazil.name
    access_config {
      // Ephemeral public IP
    }
  }
 
  

  metadata_startup_script = file("./startup.sh")


}