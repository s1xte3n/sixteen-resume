# Observability Standards

## Logging

- Use structured JSON logs
- Include correlation IDs
- Include request IDs
- Never log secrets
- Log all errors with context

## Metrics

Track:
- Lambda duration
- Lambda errors
- API latency
- DynamoDB throttles
- CI/CD failures

## Tracing

- Enable X-Ray
- Trace all Lambda APIs
- Propagate trace IDs

## Alarms

Create alarms for:
- Lambda errors
- API Gateway 5XX
- DynamoDB throttles
- CI/CD failures
