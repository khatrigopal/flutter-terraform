module "s3" {
  source     = "../modules/s3"
  bucket_name = "${var.s3_buckets}"
  tags       = "${var.tags}"
  versioning = var.versioning
  acl        = var.s3_acl
}
