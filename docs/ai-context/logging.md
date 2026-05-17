# Logging Standards

## Format
- JSON only
- Include:
  - requestId
  - userId (if exists)
  - route
  - latency
  - status

## Rules
- No secrets in logs
- No PII logging unless required
- Always log errors with context
