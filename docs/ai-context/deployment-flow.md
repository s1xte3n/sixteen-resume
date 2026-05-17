# Deployment Flow

## Branches

- develop = staging
- main = production

## Frontend Deployment

- Build Vite app
- Upload to S3
- Invalidate CloudFront cache

## Backend Deployment

- Deploy using AWS CDK
- Validate stack changes
- Run smoke tests

## CI/CD

- PR required
- CI required
- Tests required
- Lint required

## Rollback

- Revert PR
- Redeploy previous CDK version
- Restore DynamoDB PITR if required
