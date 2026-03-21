---
description: "Improve existing code (meta-command)"
user-invocable: true
---

# /jm-adk:evolve

## Purpose

Meta-command that analyzes existing code and routes to the appropriate enhancement command. Use this when you want to improve an existing project without specifying the exact enhancement type.

## Workflow

1. Analyze the current codebase to identify improvement opportunities.
2. Present a prioritized list of recommended enhancements with impact scores.
3. Route to the selected enhancement command (dark mode, i18n, a11y, etc.).
4. Verify the enhancement integrates correctly and does not break existing functionality.

## Arguments

- `target` — File or directory to improve (optional, default: project root)
- `type` — Enhancement type: `dark-mode` | `i18n` | `animation` | `offline` | `pwa` | `analytics` | `a11y` (optional, prompted)

## Examples

```bash
/jm-adk:evolve
/jm-adk:evolve type=dark-mode
/jm-adk:evolve target=./src/components type=a11y
```

## Related Commands

- `/jm-adk:review` — Code review before evolving
- `/jm-adk:add-dark-mode` — Add dark mode specifically
- `/jm-adk:add-a11y` — Improve accessibility specifically
