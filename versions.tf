terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.27.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.1"
    }
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.17.0"
    }
  }

  required_version = ">= 0.14"
}

