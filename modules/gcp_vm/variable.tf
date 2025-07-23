variable "project_id" {
  type        = string
  description = "GCP Project ID"
}

variable "region" {
  type        = string
  description = "Region for GCP resources"
}

variable "zone" {
  type        = string
  description = "Zone for GCP VM"
}

variable "network_name" {
  type        = string
  description = "VPC network name"
}

variable "subnet_name" {
  type        = string
  description = "Subnet name"
}

variable "vm_name" {
  type        = string
  description = "VM name"
}

variable "vm_machine_type" {
  type        = string
  description = "Machine type (e.g., e2-micro)"
}

variable "vm_boot_disk_size_gb" {
  type        = number
  description = "Boot disk size (GB)"
}

variable "vm_boot_disk_type" {
  type        = string
  description = "Boot disk type (e.g., pd-balanced)"
}

variable "source_image" {
  type        = string
  description = "Image name or image family (e.g., ubuntu-os-cloud/ubuntu-2204-lts)"
}

variable "ssh_username" {
  type        = string
  description = "SSH user"
}

variable "ssh_pub_key_path" {
  type        = string
  description = "Path to SSH public key"
}