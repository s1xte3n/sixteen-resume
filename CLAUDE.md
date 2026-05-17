# Vibe Coder Template Rules

## Stack

- Frontend: React + Vite + TypeScript
- Backend: Node.js Lambda APIs
- Infrastructure: AWS CDK v2
- CI/CD: GitHub Actions
- Package Manager: npm
- Architecture: Monorepo

---

## Frontend Rules

- Use TypeScript strict mode
- Use feature-based folder structure
- Use React hooks
- Avoid prop drilling
- Use lazy loading where appropriate
- Use reusable UI components
- Validate forms
- Handle loading and error states
- No inline styles
- No hardcoded API URLs

---

## Backend Rules

- Use MVC structure
- Controllers must remain thin
- Business logic belongs in services
- Validate all inputs
- Use centralized error handling
- Use structured JSON logging
- Return typed responses
- Never expose internal errors to clients
- Use environment variables only

---

## AWS Rules

- Use least privilege IAM
- Never use AdministratorAccess
- Enable CloudWatch logging
- Enable X-Ray tracing
- Enable DynamoDB PITR
- Use environment variables from Secrets Manager or SSM
- No hardcoded secrets
- API Gateway must use CORS configuration
- Use retries and DLQs where appropriate

---

## Infrastructure Rules

- Infrastructure must use AWS CDK v2
- Infrastructure must be reusable
- Separate staging and production environments
- Use environment-aware stacks
- Tag all AWS resources
- All infrastructure changes require PR review

---

## CI/CD Rules

- All PRs require CI checks
- Run lint before tests
- Run tests before build
- Block merge on failed CI
- Use GitHub Actions OIDC for AWS auth
- Never store AWS credentials in GitHub secrets
- Use branch protection rules

---

## Observability Rules

- Use structured CloudWatch logs
- Add metrics for critical workflows
- Add alarms for failures
- Use tracing for Lambda APIs
- Include correlation IDs in logs

---

## Security Rules

- Never commit secrets
- Scan dependencies
- Validate API inputs
- Sanitize outputs
- Use principle of least privilege
- Review IAM policies carefully

---

## Git Workflow

- develop = staging
- main = production
- feature/*
- bugfix/*
- hotfix/*
- PR required before merge

---

## Response Rules

Always:
- Provide production-ready code
- Include file paths
- Include comments
- Include error handling
- Include validation
- Include deployment steps
- Include CI/CD updates when relevant
- Include IAM considerations when relevant
