# CI/CD Workflow

## Pull Requests

Required:
- Lint
- Tests
- Build validation

## Deployments

develop:
- staging deployment

main:
- production deployment

## AWS Authentication

- Use GitHub OIDC
- Never use static AWS credentials

## Failure Handling

- Fail fast
- Block merge on failure
- Notify deployment failures
