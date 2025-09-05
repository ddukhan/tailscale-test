terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "7.0.1"
    }
  }
}

# Configure the Google Cloud provider
provider "google" {
  project = "GCP_Project_ID"        # Replace with your GCP Project ID
  region  = "us-central1-f"         # Replace with your desired Zone
}

resource "google_container_cluster" "primary" {
  name     = "my-gke-cluster"
  location = "us-central1-f"        # This must be same as the provider block above

  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  remove_default_node_pool = true   # Clean up work in progress, before setting nodes
  initial_node_count       = 1
  deletion_protection = false       # Allows terraform destroy
}

resource "google_container_node_pool" "primary_node_pool" {
  name       = "primary-node-pool"
  location   = "us-central1-f"
  cluster    = google_container_cluster.primary.name
  node_count = 1 # Initial node count

  node_config {  # Initial Config
    machine_type = "e2-medium"
    disk_size_gb = 100
    disk_type    = "pd-standard"
  }

  autoscaling { # Start with 1 Node and then raise as needed
    min_node_count = 1
    max_node_count = 3
  }
}
