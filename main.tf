module "gcp_vm" {
  source            = "./modules/gcp_vm"
  project_id        = var.project_id
  region            = var.region
  zone              = var.zone
  ssh_username      = var.ssh_username
  ssh_pub_key_path  = var.ssh_pub_key_path
}

module "gke" {
  source     = "./modules/gke"
  project_id = var.project_id
  region     = var.region
}
