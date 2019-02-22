resource "aws_s3_bucket" "main" {
  bucket = "${var.s3_bucket_prefix}-${local.s3_tags["environment"]}-${var.s3_region}"
  acl    = "private"

  tags = "${local.s3_tags}"

  region = "${var.s3_region}"
}

terraform {
    required_version = ">= 0.11"

    backend "s3" {
        bucket = "terraform-navneet-test-ap-south-1"
        key = "test/backbone"
        region = "ap-south-1"
        encrypt = "true"
    }
}
