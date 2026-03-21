---
description: "Run linting and formatting"
user-invocable: true
---

# /jm-adk:lint

## Purpose

Run linting and code formatting checks across the project using ESLint, Prettier, and Stylelint. Use this to enforce code quality standards and consistent formatting.

## Workflow

1. Detect available linting tools and configuration in the project.
2. Run ESLint for JavaScript/TypeScript with project-specific rules.
3. Run Prettier for code formatting and Stylelint for CSS/SCSS.
4. Report violations with file locations and auto-fix suggestions.

## Arguments

- `fix` — Auto-fix fixable violations (optional, default: false)
- `scope` — Lint scope: `all` | `staged` | `changed` (optional, default: all)

## Examples

```bash
/jm-adk:lint
/jm-adk:lint fix=true
/jm-adk:lint scope=staged fix=true
```

## Related Commands

- `/jm-adk:fix` — Auto-fix common issues beyond linting
- `/jm-adk:review` — Full code review
- `/jm-adk:test` — Run test suite
