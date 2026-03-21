---
description: "Security audit (OWASP)"
user-invocable: true
---

# /jm-adk:audit-security

## Purpose

Run a security audit based on OWASP Top 10 covering injection, authentication, data exposure, and misconfiguration risks. Use this to identify and remediate security vulnerabilities.

## Workflow

1. Analyze codebase for OWASP Top 10 vulnerabilities (injection, XSS, CSRF, etc.).
2. Review authentication flows, session management, and authorization checks.
3. Check for sensitive data exposure, insecure configurations, and dependency vulnerabilities.
4. Generate a security audit report with risk ratings and remediation steps.

## Arguments

- `scope` — Audit scope: `full` | `auth` | `api` | `frontend` | `config` (optional, default: full)
- `severity` — Minimum severity to report: `critical` | `high` | `medium` | `low` (optional, default: medium)

## Examples

```bash
/jm-adk:audit-security
/jm-adk:audit-security scope=auth severity=high
```

## Related Commands

- `/jm-adk:design-auth` — Design secure auth architecture
- `/jm-adk:audit-deps` — Dependency vulnerability scan
- `/jm-adk:review` — General code review with security focus
