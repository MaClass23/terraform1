resource "google_compute_instance" "jenkins1" {
  name         = "jenkins1"
  machine_type = "e2-medium"
  zone         = "us-central1-b"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}

resource "google_compute_instance" "nexus1" {
  name         = "nexus1"
  machine_type = "e2-medium"
  zone         = "us-central1-f"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}
