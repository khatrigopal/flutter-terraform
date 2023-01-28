module "s3" {
  source     = "../modules/s3"
  bucket_name = "${var.bucket_name}"
  acl = "${var.acl_value}"
}
