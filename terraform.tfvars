aws_region  = "ap-south-1"
user_name   = "s3-read-user-v2"
policy_name = "S3ReadOnlyPolicyV2"

s3_read_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "S3ReadOnly",
      "Effect": "Allow",
      "Action": [
        "s3:ListAllMyBuckets",
        "s3:ListBucket",
        "s3:GetObject"
      ],
      "Resource": "*"
    }
  ]
}
EOF
