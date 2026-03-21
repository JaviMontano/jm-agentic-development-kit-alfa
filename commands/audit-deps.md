---
description: "Dependency vulnerability scan"
user-invocable: true
---

# /jm-adk:audit-deps

## Purpose

Scan project dependencies for known vulnerabilities, outdated packages, and license compliance issues. Use this to maintain a secure and up-to-date dependency tree.

## Workflow

1. Run npm/yarn audit to identify known vulnerabilities in dependencies.
2. Check for outdated packages with available security patches.
3. Analyze license compliance against project requirements.
4. Generate a dependency report with vulnerability details and upgrade recommendations.

## Arguments

- `fix` — Auto-fix safe vulnerabilities (optional, default: false)
- `level` — Minimum severity: `critical` | `high` | `moderate` | `low` (optional, default: moderate)

## Examples

```bash
/jm-adk:audit-deps
/jm-adk:audit-deps fix=true level=high
```

## Related Commands

- `/jm-adk:audit-security` — Full security audit
- `/jm-adk:fix` — Auto-fix common issues
- `/jm-adk:review` — Code review including dependencies
