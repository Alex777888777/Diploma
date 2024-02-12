provider "google" {
  credentials = file(var.credentials_file)
  project = "tidal-mason-406418"
  region  = "us-central1"
  zone    = "us-central1-b"
}
resource "google_compute_instance" "default" {
  provider     = google
  name         = "default"
  machine_type = "e2-medium"
  network_interface {
    access_config {
      network_tier = "PREMIUM"
    }

    queue_count = 0
    stack_type  = "IPV4_ONLY"
    subnetwork  = "projects/tidal-mason-406418/regions/us-central1/subnetworks/default"
  }
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
      size = 30 
    }
  }
  metadata_startup_script = "${file("./create_soft.sh")}"
}

