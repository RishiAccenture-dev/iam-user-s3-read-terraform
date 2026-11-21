# IAM user
resource "aws_iam_user" "s3_reader" {
  name = var.user_name

  tags = {
    Purpose = "S3 read-only access"
  }
}

# IAM policy created from the variable
resource "aws_iam_policy" "s3_read" {
  name        = var.policy_name
  description = "Read-only access to S3"
  policy      = var.s3_read_policy
}

# Attach the policy to the user
resource "aws_iam_user_policy_attachment" "s3_read" {
  user       = aws_iam_user.s3_reader.name
  policy_arn = aws_iam_policy.s3_read.arn
}
