# API Standards

## General
- REST only
- JSON responses only
- No raw errors exposed

## Response format

Success:
- status
- data
- timestamp

Error:
- status
- error code
- message (safe only)

## Rules
- Validate all inputs
- Use consistent error handler
- Never leak stack traces
