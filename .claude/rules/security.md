Applies to: **

- Never hardcode secrets
- Use Secrets Manager or SSM
- Use least privilege IAM
- Validate all API inputs
- Sanitize outputs
- Never expose internal errors
- Never log credentials
- Scan dependencies
- Review public AWS resources
- No wildcard IAM actions
- No wildcard resources
- Each Lambda has dedicated role
- No shared IAM roles between services
- Public S3 buckets forbidden
