variable "project_id" {
  type        = string
  description = "GCP Project ID"
}

variable "region" {
  type        = string
  description = "GCP Region"
}

variable "zone" {
  type        = string
  description = "GCP Zone"
}

variable "network_name" {
  type        = string
  description = "Name of the VPC network"
}

variable "subnet_name" {
  type        = string
  description = "Name of the subnet"
}

variable "vm_name" {
  type        = string
  description = "Name of the virtual machine"
}

variable "ssh_username" {
  type        = string
  description = "Username for SSH access"
  default     = "vishal"
}

variable "ssh_pub_key_path" {
  type        = string
  description = "Path to SSH public key"
  default     = "/home/vishal/.ssh/id_rsa.pub"
}
