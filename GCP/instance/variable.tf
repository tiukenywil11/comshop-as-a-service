variable "instance_name" {
  type = string
}

variable "instance_machine_type" {
  type = string
}

variable "instance_zone" {
  type = string
}

variable "instance_tags" {
  type = list(string)
}

variable "instance_boot_disk_size_gb" {
  type = string
}

variable "instance_boot_disk_type" {
  type = string
}

variable "instance_network" {
  type = string
}

variable "instance_subnetwork" {
  type = string
}

variable "instance_external_ip" {
  type = string
}

variable "instance_startup_script_url" {
  type = string
}

variable "instance_image" {
  type = string
}

variable "instance_preemptible" {
  type = bool
}
