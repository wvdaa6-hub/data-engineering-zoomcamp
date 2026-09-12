variable "project" {
  description = "GCP Project ID"
  default     = "project-af21f5d0-df32-4d47-9b0"
}

variable "region" {
  description = "Region"
  default     = "europe-west1"
}

variable "location" {
  description = "Project Location"
  default     = "EU"
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  default     = "demo_dataset"
}

variable "gcs_bucket_name" {
  description = "My Storage Bucket Name"
  default     = "project-af21f5d0-df32-4d47-9b0-terra-bucket"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}