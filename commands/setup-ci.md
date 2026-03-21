---
description: "Configure GitHub Actions CI/CD"
user-invocable: true
---

# /jm-adk:setup-ci

## Purpose

Configure a GitHub Actions CI/CD pipeline with build, test, and deploy stages. Use this to automate quality checks and deployment on every push or pull request.

## Workflow

1. Analyze project structure to determine build, test, and deploy requirements.
2. Generate `.github/workflows/ci.yml` with lint, test, build, and deploy jobs.
3. Configure branch protection rules and environment secrets documentation.
4. Verify the workflow syntax and provide setup instructions for GitHub secrets.

## Arguments

- `deploy-target` — Deploy target: `hostinger` | `firebase` | `none` (optional, default: none)
- `triggers` — CI triggers: comma-separated (optional, default: "push,pull_request")
- `node-version` — Node.js version (optional, default: 20)

## Examples

```bash
/jm-adk:setup-ci
/jm-adk:setup-ci deploy-target=firebase triggers="push,pull_request"
```

## Related Commands

- `/jm-adk:deploy` — Manual deployment
- `/jm-adk:test` — Run tests locally
- `/jm-adk:lint` — Run linting locally
