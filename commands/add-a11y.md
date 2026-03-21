---
description: "Improve accessibility compliance"
user-invocable: true
---

# /jm-adk:add-a11y

## Purpose

Improve accessibility compliance by auditing and fixing WCAG issues across the application. Use this to make your application usable by people with disabilities.

## Workflow

1. Run automated accessibility audit using axe-core and identify violations.
2. Fix critical issues: missing alt text, color contrast, focus management, ARIA attributes.
3. Implement keyboard navigation, skip links, and screen reader announcements.
4. Generate accessibility compliance report with remaining manual checks needed.

## Arguments

- `level` — WCAG level: `A` | `AA` | `AAA` (optional, default: AA)
- `scope` — Audit scope: `full` | `critical` | `forms` | `navigation` (optional, default: full)

## Examples

```bash
/jm-adk:add-a11y
/jm-adk:add-a11y level=AA scope=full
```

## Related Commands

- `/jm-adk:audit-a11y` — Accessibility audit only (no fixes)
- `/jm-adk:test-a11y` — Run accessibility tests
- `/jm-adk:evolve` — General enhancement meta-command
