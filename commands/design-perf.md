---
description: "Design performance optimization plan"
user-invocable: true
---

# /jm-adk:design-perf

## Purpose

Design a performance optimization plan covering loading, rendering, and runtime performance. Use this to proactively address performance before or after initial development.

## Workflow

1. Analyze current or planned architecture for performance bottlenecks.
2. Design optimization strategy for Core Web Vitals (LCP, FID, CLS).
3. Plan lazy loading, code splitting, image optimization, and caching strategies.
4. Generate a performance budget and optimization implementation plan.

## Arguments

- `input` — Application description or current performance data (required)
- `target` — Performance target: `basic` | `good` | `excellent` (optional, default: good)

## Examples

```bash
/jm-adk:design-perf input="Content-heavy marketing site with images and video"
/jm-adk:design-perf input=./lighthouse-report.json target=excellent
```

## Related Commands

- `/jm-adk:audit-perf` — Run Lighthouse performance audit
- `/jm-adk:audit-bundle` — Bundle size analysis
- `/jm-adk:design-pwa` — PWA caching for performance
