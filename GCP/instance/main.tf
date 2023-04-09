resource "google_compute_instance" "instance" {
  name         = var.instance_name
  machine_type = var.instance_machine_type
  zone         = var.instance_zone
  tags         = var.instance_tags

  boot_disk {
    initialize_params {
      size  = var.instance_boot_disk_size_gb
      type  = var.instance_boot_disk_type
    }
  }

  network_interface {
    network = var.instance_network
    subnetwork = var.instance_subnetwork
    access_config {
      nat_ip = var.instance_external_ip
    }
  }

  metadata {
    windows-startup-script-url = var.instance_startup_script_url
  }

  boot_disk {
    initialize_params {
      image = var.instance_image
    }
  }

  scheduling {
    preemptible = var.instance_preemptible
  }

  guest_accelerator {
    type = var.instance_accelerator_type
    count = var.instance_accelerator_count
  }
}