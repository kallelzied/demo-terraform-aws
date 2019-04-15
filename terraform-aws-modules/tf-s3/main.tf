resource "aws_s3_bucket" "s3" {
  bucket = "${var.bucket-name}"
  versioning {
    enabled = "${var.is-versioning-enabled}"
  }
}