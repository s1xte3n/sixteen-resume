# Runtime Contract

This system must always enforce:

## Safety
- No production deploy without CI pass
- No IAM wildcard permissions
- No secrets in code

## Stability
- All APIs must have error handling
- All Lambdas must log structured output
- All deployments must be reversible

## Observability
- Every request has requestId
- Every error is logged with context
- CloudWatch enabled for all services

## Deployment Safety
- Staging first
- Production manual approval
- Rollback strategy required
