---
description: "Build optimized bundle + deploy to Hostinger or Firebase"
user-invocable: true
---

# /jm-adk:ship

## Purpose

Build a production-optimized bundle and deploy it to the configured hosting target. Use this when your code is ready and you want a one-command release.

## Workflow

1. Run pre-flight checks: lint, tests, and bundle analysis.
2. Build production bundle with minification, tree-shaking, and asset optimization.
3. Deploy to the configured target (Hostinger via FTP or Firebase Hosting).
4. Verify deployment with smoke tests and report the live URL.

## Arguments

- `target` — Deploy target: `hostinger` | `firebase` (optional, uses project config)
- `skip-tests` — Skip test suite before shipping (optional, default: false)

## Examples

```bash
/jm-adk:ship
/jm-adk:ship target=firebase
/jm-adk:ship target=hostinger skip-tests=true
```

## Related Commands

- `/jm-adk:deploy` — Deploy without building
- `/jm-adk:audit-bundle` — Analyze bundle size before shipping
- `/jm-adk:rollback` — Rollback if something goes wrong
