---
description: "Bundle size analysis"
user-invocable: true
---

# /jm-adk:audit-bundle

## Purpose

Analyze the production bundle to identify large dependencies, unused code, and optimization opportunities. Use this to reduce bundle size and improve loading performance.

## Workflow

1. Build the production bundle and generate a size report.
2. Analyze bundle composition: identify largest modules, dependencies, and duplicates.
3. Detect unused exports, dead code, and tree-shaking opportunities.
4. Generate a bundle analysis report with reduction recommendations and expected savings.

## Arguments

- `format` — Report format: `treemap` | `table` | `json` (optional, default: table)
- `budget` — Size budget in KB to check against (optional)

## Examples

```bash
/jm-adk:audit-bundle
/jm-adk:audit-bundle format=treemap budget=250
```

## Related Commands

- `/jm-adk:audit-perf` — Full performance audit
- `/jm-adk:design-perf` — Performance optimization plan
- `/jm-adk:ship` — Build and deploy optimized bundle
