# Rollback Strategy

## Backend
- Redeploy previous CDK version
- Restore Lambda version alias

## Frontend
- Revert S3 deployment
- Invalidate CloudFront cache

## Data
- Use DynamoDB PITR restore if required
