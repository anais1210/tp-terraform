variable "project_id" {
  description = "ultra-resolver-370109"
}

variable "region" {
  description = "region"
}

provider "google" {
  project = var.project_id
  region  = var.region
}

# VPC
resource "google_compute_network" "MyNetwork" {
 name                    = "MyNetwork"
  auto_create_subnetworks = false
  mtu                     = 1500
}

# Subnet
resource "google_compute_subnetwork" "subnet" {
  name          = "${var.project_id}-subnet"
  region        = var.region
  network       = google_compute_network.MyNetwork.name
  ip_cidr_range = "10.10.0.0/24"
}
