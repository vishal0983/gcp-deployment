# modules/gcp_vm/main.tf
resource "google_compute_network" "vpc_network" {
  name                    = var.network_name
  auto_create_subnetworks = false # Explicitly manage subnetworks
}

resource "google_compute_subnetwork" "subnet" {
  name          = var.subnet_name
  ip_cidr_range = "10.20.1.0/24" # You can make this a variable in root/module too if desired
  region        = var.region
  network       = google_compute_network.vpc_network.id
}

resource "google_compute_instance" "vm_instance" {
  name         = var.vm_name
  machine_type = var.vm_machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.source_image
      size  = var.vm_boot_disk_size_gb
      type  = var.vm_boot_disk_type
    }
  }

  network_interface {
    network    = google_compute_network.vpc_network.id
    subnetwork = google_compute_subnetwork.subnet.id
    # This empty access_config block assigns an ephemeral public IP address.
    # Remove this block if you only want an internal IP.
    access_config {}
  }

  metadata = {
    ssh-keys = "${var.ssh_username}:${file(var.ssh_pub_key_path)}"
  }
}