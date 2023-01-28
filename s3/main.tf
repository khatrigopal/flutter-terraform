module "s3" {
  source     = "../modules/s3"
  bucket = "${var.bucket_name}"
  acl    = "${var.acl_value}"

}
