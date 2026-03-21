---
description: "Run accessibility tests"
user-invocable: true
---

# /jm-adk:test-a11y

## Purpose

Run automated accessibility tests that can be integrated into CI/CD pipelines. Use this to prevent accessibility regressions in continuous integration.

## Workflow

1. Configure axe-core test runner with WCAG level and rule set.
2. Run accessibility tests against all pages/components in the application.
3. Check for violations at the specified severity threshold.
4. Generate a test report with pass/fail status suitable for CI gate checks.

## Arguments

- `level` — WCAG level: `A` | `AA` | `AAA` (optional, default: AA)
- `threshold` — Maximum allowed violations before failing (optional, default: 0)
- `scope` — Test scope: `all` | `critical-paths` (optional, default: all)

## Examples

```bash
/jm-adk:test-a11y
/jm-adk:test-a11y level=AA threshold=0
```

## Related Commands

- `/jm-adk:audit-a11y` — Detailed accessibility audit
- `/jm-adk:add-a11y` — Fix accessibility issues
- `/jm-adk:test` — Run full test suite
