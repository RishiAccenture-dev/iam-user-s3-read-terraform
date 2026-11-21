output "user_name" {
  description = "IAM user name"
  value       = aws_iam_user.s3_reader.name
}

output "user_arn" {
  description = "IAM user ARN"
  value       = aws_iam_user.s3_reader.arn
}

output "policy_arn" {
  description = "IAM policy ARN"
  value       = aws_iam_policy.s3_read.arn
}
