Applies to: .github/workflows/**

- Must fail fast
- Must block merge on any failure
- Must run lint, test, build in order
- Must use OIDC for AWS
- Must not expose secrets in logs
- Must separate staging vs production workflows
- Must require approval for production deploy
