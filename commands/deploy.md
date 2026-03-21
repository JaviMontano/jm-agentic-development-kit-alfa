---
description: "Deploy to configured target (meta-command)"
user-invocable: true
---

# /jm-adk:deploy

## Purpose

Deploy the application to the configured hosting target. Meta-command that routes to the appropriate deploy sub-command based on project configuration. Use this for standard deployments.

## Workflow

1. Read project configuration to determine the deploy target and settings.
2. Run pre-deploy checks: build validation, test suite, and environment verification.
3. Execute deployment to the configured target (Hostinger, Firebase, or preview).
4. Verify deployment success and report the live URL.

## Arguments

- `target` — Deploy target override: `hostinger` | `firebase` | `preview` (optional, uses config)
- `skip-checks` — Skip pre-deploy validation (optional, default: false)

## Examples

```bash
/jm-adk:deploy
/jm-adk:deploy target=firebase
/jm-adk:deploy target=preview skip-checks=true
```

## Related Commands

- `/jm-adk:deploy-hostinger` — Deploy to Hostinger specifically
- `/jm-adk:deploy-firebase` — Deploy to Firebase specifically
- `/jm-adk:rollback` — Rollback deployment
