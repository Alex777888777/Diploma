provider "google" {
  credentials = file(var.credentials_file)
  project = "tidal-mason-406418"
  region  = "us-central1"
  zone    = "us-central1-b"
}
variable "gce_ssh_user" {
  type    = string
  default = "default"
}

variable "public_ssh_key" {
  type    = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDM4VhUWDiTDGm+3qOBBf9WSP+Bw+Nej7+XbeUYAWmc7hRgMo6QFYO+k4yGpzTKm4HVAjyyXlbU+B5/u+bcD0Iuu71k5duaV1aeRBbW3kYYvfC5YtY5558/DYKxStvGn0MTNWYbohACGIQPF9VYGBaJyBlts6fgYQyYxhBpEP2U5Ah3OgEeMsxXO+Rau1oV4YlHpuVhL25V2uh/HOzHZCWy/Yo7PhCVqvPlT0ut2Tzoh/fCASDGYRLrqtUPBH29Sjd95DISE5AdDjJiXeHVr6ERXr1zdyJI7JF7PilyjLcTBy2vKTxl3Yc6XKNEhyW8HE7/H4irIbQhFC98/amXAIXswYr1TwE+UNpStBrwFIS1VolsxKVrSXXsMKj+mNrvhnudV6AMiDORO6TnU/8zMBq7A4r+PO4NcvhtUsEqCBz6QPhYEyVaIdT34v5SLjLPcDahSKPa8PHtR+pWk0j1URi3hTfo7OJEv/1lqhIPx5rnb9WHIPN4LGX2rbCoKIY9S0M= zfreyjaz@instance-11.us-central1-b.c.tidal-mason-406418.internal"
}
resource "google_compute_instance" "default" {
  provider     = google
  name         = "default"
  machine_type = "e2-medium"
  metadata = {
    ssh-keys = "${var.gce_ssh_user}:${var.public_ssh_key}"
  }
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
  
output "instance_ip" {
  value = google_compute_instance.default.network_interface[0].access_config[0].nat_ip
} 
