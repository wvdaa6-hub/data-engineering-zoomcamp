variable "project" {
  description = "GCP Project ID"
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.42.0"
    }
  }
}

provider "google" {
  project = var.project
  region  = "europe-west1"
}

resource "google_storage_bucket" "auto-expire" {
  name                        = "project-af21f5d0-df32-4d47-9b0-auto-expire"
  location                    = "EU"
  force_destroy               = true
  uniform_bucket_level_access = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}