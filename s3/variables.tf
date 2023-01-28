variable "aws_region" {
  description = "The AWS region to use to create resources."
  default     = "us-east-1"
}



variable "bucket_name" {
  type        = string
  description = "Creates a unique bucket name beginning with the specified prefix. Conflicts with bucket."
  default     = ""
}


