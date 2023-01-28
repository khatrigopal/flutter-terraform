variable "aws_region" {
  description = "The AWS region to use to create resources."
  default     = "us-east-1"
}

variable "s3_buckets" {
  type        = string
  description = "(required since we are not using 'bucket') Creates a unique bucket name beginning with the specified prefix. Conflicts with bucket."
}

variable "tags" {
  type        = map(string)
  description = "(Optional) A mapping of tags to assign to the bucket."
  default     = {}
}

variable "acl" {
  type        = string
  description = " Defaults to private "
  default     = "private"
}

variable "versioning" {
  description = "versioning config"
  type        = string
  default     = "Enabled"
}
variable "bucket_force_destroy" {
  description = ""
  type        = bool
  default     = "false"
}
