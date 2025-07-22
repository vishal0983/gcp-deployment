variable "project_id" {
  type        = string
  description = "GCP Project ID"
}

variable "region" {
  type        = string
  default     = "us-central1"
}

variable "zone" {
  type        = string
  default     = "us-central1-a"
}

variable "network_name" {
  type        = string
  default     = "custom-vpc"
}

variable "subnet_name" {
  type        = string
  default     = "custom-subnet"
}

variable "vm_name" {
  type        = string
  default     = "ubuntu-vm"
}
