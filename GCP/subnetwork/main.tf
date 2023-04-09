resource "google_compute_subnetwork" "subnetwork" {
  name          = var.subnetwork_name
  network       = var.subnetwork_network
  region        = var.subnetwork_region
  ip_cidr_range = var.subnetwork_ip_cidr_range
}
