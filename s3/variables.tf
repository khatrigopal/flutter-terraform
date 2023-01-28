variable "aws_region" {
  description = "The AWS region to use to create resources."
  default     = "us-east-1"
}

variable "s3_buckets" {
  type        = string
  description = "Creates a unique bucket name beginning with the specified prefix. Conflicts with bucket."
  default     = ""
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

variable "bucket_force_destroy" {
  description = ""
  type        = bool
  default     = "false"
}

variable "s3_acl" {
  description = "acl access"
  type        = string
  default     = "private"
}
variable "versioning" {
  description = "versioning config"
  type        = string
  default     = "Enabled"
}
