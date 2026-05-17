# 🧠 Vibe Coder Template

> A workflow-enforcing engineering system for building, reviewing, shipping, and operating production software with AI-assisted development.

This is not a starter repo. It is an **opinionated engineering system** combining Git workflows, CI/CD, AWS standards, and AI-driven development rules.

---

## ✨ Philosophy

* Automation over discipline
* Consistency over cleverness
* Safety over speed without control
* Small commits, verifiable changes
* Production thinking from day one
* Treat solo development like a team system

---

## ⚙️ Tech Stack

* Runtime: Node.js
* Frontend: React (Vite + TypeScript)
* Backend: Node.js (API / Lambda-ready)
* Infrastructure: AWS CDK v2
* CI/CD: GitHub Actions
* Tooling: ESLint, Prettier, Husky
* Architecture: Monorepo

---

## 🚀 One-Click Setup

After creating a repo from this template:

```bash
chmod +x scripts/bootstrap-repo.sh
./scripts/bootstrap-repo.sh
```

This configures:

* develop branch initialization
* branch protection rules
* CI enforcement
* security settings
* repository baseline setup

All future changes must go through PRs.

---

## 🔐 System Enforcement Model

This repository enforces correctness through layers:

### 1. Code Rules (.claude/rules)

* Backend structure (MVC, validation, error handling)
* Frontend structure (feature-based React)
* Infrastructure rules (CDK, IAM safety)
* CI/CD rules (GitHub Actions enforcement)
* Security rules (no secrets, least privilege)
* Testing rules (required coverage for logic)

---

### 2. AI System Layer (.claude)

* Agents (security, CI, debugging, AWS architecture)
* Commands (/review, /deploy, /troubleshoot, /incident)
* Hooks (secrets detection, CDK validation, safety checks)
* Output styles (architecture, concise, code-only)

AI is constrained by repository rules.

---

### 3. Runtime Governance

* Feature flags system controls runtime behavior
* Centralized config validation
* Structured error handling system
* Request context tracking (requestId propagation)
* Structured JSON logging enforced

---

### 4. CI/CD Enforcement

GitHub Actions pipelines enforce:

* lint → test → build → security scan
* PR-only merges
* develop = staging deployments
* main = production deployments (manual approval)
* OIDC-based AWS authentication

---

### 5. Safety Hooks (Local Protection)

Prevents:

* secret leakage
* unsafe git operations
* invalid CDK deployments
* production mistakes

---

## 🔁 Required Workflow

### Step 1 — Create feature branch

```bash
git checkout develop
git pull
git checkout -b feature/name
```

---

### Step 2 — Implement changes

* Follow `.claude/rules`
* Use `.claude/agents` guidance
* Validate locally before push

---

### Step 3 — Local validation

```bash
npm run lint
npm run test
npm run build
```

---

### Step 4 — AI review (mandatory)

```bash
/review
```

Checks:

* architecture
* security
* AWS correctness
* CI readiness
* observability gaps

---

### Step 5 — Commit & push

```bash
git add .
git commit -m "feat: description"
git push
```

---

### Step 6 — Pull request to develop

* CI runs automatically
* Must pass all checks
* No direct merges

---

### Step 7 — Production release

* PR: develop → main
* Manual approval required
* Deploy via GitHub Actions

---

## 🤖 AI Command System

### /review

Full code and architecture review

### /deploy

Validates deployment safety and triggers pipeline rules

### /troubleshoot

Diagnoses runtime issues using logs and infrastructure signals

### /incident

Used for production failures, rollback guidance, and mitigation

---

## 📁 Repository Structure

```
vibe-coder-template/
├── .github/                # CI/CD workflows
├── .claude/                # AI system layer
│   ├── agents/
│   ├── commands/
│   ├── hooks/
│   ├── rules/
│   ├── skills/
│   └── output-styles/
├── apps/
│   ├── frontend/
│   └── backend/
├── packages/
│   ├── feature-flags/
│   ├── config/
├── infra/                  # AWS CDK
├── docs/
│   └── ai-context/
│       ├── architecture.md
│       ├── aws-standards.md
│       ├── backend-patterns.md
│       ├── frontend-patterns.md
│       ├── cicd-workflow.md
│       ├── deployment-flow.md
│       ├── observability.md
│       ├── security.md
│       ├── testing-strategy.md
│       └── environments.md
├── scripts/
├── security/
├── observability/
└── README.md
```

---

## 📊 CI/CD Model

### Branch Strategy

* develop → staging
* main → production
* feature/* → PR flow
* hotfix/* → emergency fixes

---

### Pipeline Stages

1. lint
2. test
3. build
4. security scan
5. deploy (staging)
6. manual deploy (production)

---

## 🔐 Security Model

* No secrets in code
* IAM least privilege only
* No wildcard permissions
* Dependency scanning enabled
* Secret scanning enabled
* Production protected by approval gate

---

## 📈 Observability Model

* Structured JSON logs
* RequestId tracking
* CloudWatch metrics
* Error tracing enabled
* API latency monitoring

---

## ⚙️ Runtime Model

* Feature flags control behavior
* Centralized config validation
* Strict environment separation
* Safe rollback support

---

## 🧠 Documentation System

### architecture.md

System structure and design

### cicd-workflow.md

Pipeline and deployment flow

### deployment-flow.md

Release and rollback strategy

### observability.md

Logging, metrics, tracing

### security.md

Security policies and IAM rules

### environments.md

Environment definitions (dev/staging/prod)

---

## 💡 Engineering Principles

* Everything must be reproducible
* Everything must be testable
* Everything must be observable
* Everything must be deployable via CI
* Manual actions are exceptions, not defaults

---

## 🏁 Final Rule

If a change is not:

* tested
* reviewed
* observable
* deployable

It is not done.

---

This system is designed to enforce production-level engineering discipline through automation, structure, and AI constraints.
