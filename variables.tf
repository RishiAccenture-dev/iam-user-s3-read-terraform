variable "aws_region" {
  description = "AWS region for the provider"
  type        = string
}

variable "user_name" {
  description = "Name of the IAM user"
  type        = string
}

variable "policy_name" {
  description = "Name of the IAM policy"
  type        = string
}

variable "s3_read_policy" {
  description = "IAM policy document (JSON) granting S3 read-only access"
  type        = string
}
