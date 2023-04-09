output "instance_network_interface" {
  value = google_compute_instance.instance.network_interface[0].network_ip
}

output "instance_external_ip" {
  value = google_compute_instance.instance.network_interface[0].access_config[0].nat_ip
}