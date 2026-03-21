---
description: "Lighthouse performance audit"
user-invocable: true
---

# /jm-adk:audit-perf

## Purpose

Run a Lighthouse-based performance audit measuring Core Web Vitals, loading speed, and runtime performance. Use this to identify performance bottlenecks and optimization opportunities.

## Workflow

1. Run Lighthouse performance audit against the target URL or local build.
2. Analyze Core Web Vitals: LCP, FID/INP, CLS with diagnostic details.
3. Identify render-blocking resources, unused code, and optimization opportunities.
4. Generate a performance report with prioritized recommendations and expected impact.

## Arguments

- `url` — Target URL to audit (optional, uses local dev server)
- `device` — Device profile: `mobile` | `desktop` | `both` (optional, default: mobile)
- `budget` — Performance budget file path (optional)

## Examples

```bash
/jm-adk:audit-perf
/jm-adk:audit-perf url=https://example.com device=both
```

## Related Commands

- `/jm-adk:design-perf` — Design performance optimization plan
- `/jm-adk:audit-bundle` — Bundle size analysis
- `/jm-adk:test-perf` — Run performance tests
