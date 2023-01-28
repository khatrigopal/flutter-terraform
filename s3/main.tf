module "s3" {
  source     = "../modules/s3"
  bucket_name = "${var.bucket_name}"
  acl_value    = "${var.acl_value}"

}
