---
description: "WCAG accessibility audit"
user-invocable: true
---

# /jm-adk:audit-a11y

## Purpose

Run a WCAG accessibility audit identifying violations, warnings, and best practice recommendations. Use this to measure accessibility compliance without applying fixes.

## Workflow

1. Run axe-core automated accessibility analysis on all pages/components.
2. Check WCAG 2.1 criteria at the specified level (A, AA, or AAA).
3. Categorize findings by severity: critical, serious, moderate, minor.
4. Generate an accessibility audit report with violation details and remediation guidance.

## Arguments

- `url` — Target URL (optional, uses local dev server)
- `level` — WCAG level: `A` | `AA` | `AAA` (optional, default: AA)
- `scope` — Audit scope: `full` | `single-page` (optional, default: full)

## Examples

```bash
/jm-adk:audit-a11y
/jm-adk:audit-a11y level=AAA scope=full
```

## Related Commands

- `/jm-adk:add-a11y` — Fix accessibility issues
- `/jm-adk:test-a11y` — Automated accessibility tests
- `/jm-adk:review` — General code review
