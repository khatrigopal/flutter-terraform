module "dev-s3" {
  source     = "../modules/s3"
  s3_buckets = var.s3_buckets
  tags       = var.tags
  versioning = var.versioning
  acl        = var.s3_acl
  policy = data.aws_iam_policy_document.public_read_access.json
}
#DataSource to generate a policy document
data "aws_iam_policy_document" "public_read_access" {
  statement {
    principals {
	  type = "*"
	  identifiers = ["*"]
	}

    actions = [
      "s3:GetObject",
      "s3:ListBucket",
    ]

    resources = [
      var.s3_buckets,
      "${var.s3_buckets}/*",
    ]
  }
}
