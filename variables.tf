variable "project_id" {
  type        = string
  description = "GCP Project ID"
}

variable "region" {
  type        = string
  default     = "us-central1"
  description = "GCP Region"
}

variable "zone" {
  type        = string
  default     = "us-central1-a"
  description = "GCP Zone"
}

variable "network_name" {
  type        = string
  default     = "my-vpc"
  description = "Name of the VPC network"
}

variable "subnet_name" {
  type        = string
  default     = "my-subnet"
  description = "Name of the subnet"
}

variable "vm_name" {
  type        = string
  default     = "my-vm"
  description = "Name of the virtual machine"
}
