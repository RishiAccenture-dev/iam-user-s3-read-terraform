# IAM User Automation with Terraform

Creates an IAM user with an S3 read-only policy. The policy JSON is
stored in a Terraform variable (`s3_read_policy`).

## Resources
- IAM user
- IAM policy (from variable)
- Policy attachment to the user

## Usage
```bash
terraform init
terraform plan
terraform apply
```

## Test
Tested the policy with `aws iam simulate-custom-policy`:
- s3:ListAllMyBuckets, s3:GetObject -> allowed
- s3:PutObject -> implicitDeny



## Cleanup
```bash
terraform destroy
```
