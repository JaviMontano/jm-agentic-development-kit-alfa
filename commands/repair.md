---
description: "Debug and fix issues"
user-invocable: true
---

# /jm-adk:repair

## Purpose

Debug and fix issues in existing code by analyzing error messages, stack traces, and unexpected behavior. Use this when something is broken and needs investigation.

## Workflow

1. Gather context: error messages, stack traces, reproduction steps, and environment info.
2. Analyze root cause by tracing the error through code paths and dependencies.
3. Implement the fix with minimal code changes and add regression prevention.
4. Verify the fix resolves the issue and does not introduce new problems.

## Arguments

- `error` — Error message or description of the issue (required)
- `file` — File where the issue occurs (optional)
- `verbose` — Show detailed debugging trace (optional, default: false)

## Examples

```bash
/jm-adk:repair error="TypeError: Cannot read property 'map' of undefined"
/jm-adk:repair error="Login form not submitting" file=./src/auth/login.js
```

## Related Commands

- `/jm-adk:review` — Prevent issues with code review
- `/jm-adk:fix` — Auto-fix common issues
- `/jm-adk:test` — Run tests to verify fixes
