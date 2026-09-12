variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
}

variable "dataset_name" {
  description = "Glue database name"
  type        = string
}

variable "aws_region" {
  type    = string
  default = "eu-west-1"
}