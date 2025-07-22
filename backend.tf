terraform {
  backend "gcs" {
    bucket  = "terraform-state-vishu"
    prefix  = "gcp-vm"
  }
}
