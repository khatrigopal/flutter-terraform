resource "aws_s3_bucket" "s3-bucket" {
  bucket        = var.s3_buckets
  force_destroy = var.bucket_force_destroy
  tags          = var.tags
}

resource "aws_s3_bucket_versioning" "bucket_versioning" {
  bucket = aws_s3_bucket.s3-bucket.id
  versioning_configuration {
    status = var.versioning
  }
}
resource "aws_s3_bucket_acl" "acl" {
  bucket = aws_s3_bucket.s3-bucket.id
  acl    = var.acl
}
