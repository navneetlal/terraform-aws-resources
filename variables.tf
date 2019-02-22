variable "s3_bucket_prefix" {
  description = "Prefix of the S3 bucket"
  type        = "string"
}

variable "s3_region" {
  type = "string"
}

locals {
  s3_tags = {
    created_by  = "terraform"
    environment = "test"
  }
}
