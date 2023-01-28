resource "aws_s3_bucket" "s3-bucket" {
  bucket        = var.s3_buckets
  force_destroy = var.bucket_force_destroy
  tags          = var.tags
}
