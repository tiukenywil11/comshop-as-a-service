module "instance" {
  source = "./modules/instance"

  instance_name             = "my-instance"
  instance_machine_type     = "n1-standard-4"
  instance_zone             = "asia-east1-a"
  instance_tags             = ["my-tag"]
  instance_boot_disk_size_gb = "250"
  instance_boot_disk_type   = "pd-ssd"
  instance_network          = module.network.network_self_link
  instance_subnetwork       = module.subnetwork.subnetwork_self_link
  instance_external_ip      = "EPHEMERAL"
  instance_startup_script_url = "https://example.com/startup-script.ps1"
  instance_image            = "nvidia-gaming-winserver-image.jinja"
  instance_accelerator_count = 1
  instance_accelerator_type  = "nvidia-tesla-t4"
  instance_preemptible       = false
}

module "network" {
  source = "./modules/network"

  network_name                    = "my-network"
  network_auto_create_subnetworks = true
}

module "subnetwork" {
  source = "./modules/subnetwork"

  subnetwork_name          = "my-subnetwork"
  subnetwork_network       = module.network.network_self_link
  subnetwork_region        = "asia-east1"
  subnetwork_ip_cidr_range = "10.0.0.0/24"
}