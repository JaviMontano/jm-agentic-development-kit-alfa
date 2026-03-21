---
description: "Code review with quality gates"
user-invocable: true
---

# /jm-adk:review

## Purpose

Perform a comprehensive code review with automated quality gates covering code quality, security, performance, and maintainability. Use this before merging or deploying code.

## Workflow

1. Analyze code changes (diff or full project) for quality, patterns, and anti-patterns.
2. Check security vulnerabilities, injection risks, and sensitive data exposure.
3. Evaluate performance implications, bundle impact, and scalability concerns.
4. Generate a review report with severity-ranked findings and fix recommendations.

## Arguments

- `target` — File, directory, or git diff to review (optional, default: staged changes)
- `focus` — Review focus: `quality` | `security` | `performance` | `all` (optional, default: all)

## Examples

```bash
/jm-adk:review
/jm-adk:review target=./src/components
/jm-adk:review target="git diff main" focus=security
```

## Related Commands

- `/jm-adk:repair` — Fix issues found in review
- `/jm-adk:lint` — Run linting checks
- `/jm-adk:audit-security` — Deep security audit
