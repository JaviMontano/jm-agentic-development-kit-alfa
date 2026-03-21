---
description: "Auto-fix common issues"
user-invocable: true
---

# /jm-adk:fix

## Purpose

Automatically fix common code issues including lint violations, formatting, import organization, and simple bugs. Use this for quick cleanup without manual intervention.

## Workflow

1. Run all available linters and formatters with auto-fix enabled.
2. Organize imports, remove unused variables, and fix simple type errors.
3. Fix common HTML issues: missing attributes, deprecated elements, broken links.
4. Report all applied fixes and any remaining issues that require manual attention.

## Arguments

- `scope` — Fix scope: `all` | `staged` | `file` (optional, default: all)
- `target` — Specific file or directory (optional)
- `dry-run` — Preview fixes without applying (optional, default: false)

## Examples

```bash
/jm-adk:fix
/jm-adk:fix scope=staged
/jm-adk:fix target=./src/components dry-run=true
```

## Related Commands

- `/jm-adk:lint` — Lint without fixing
- `/jm-adk:repair` — Fix specific bugs
- `/jm-adk:review` — Full code review
