---
description: "Run performance tests"
user-invocable: true
---

# /jm-adk:test-perf

## Purpose

Run performance tests measuring load times, rendering performance, and resource usage against defined budgets. Use this to catch performance regressions.

## Workflow

1. Define performance budgets for key metrics (LCP, FID, CLS, bundle size, TTI).
2. Run Lighthouse CI against target pages in simulated mobile conditions.
3. Compare results against budgets and previous baselines.
4. Generate a performance test report with pass/fail status and trend analysis.

## Arguments

- `url` — Target URL (optional, uses local dev server)
- `budget` — Performance budget file (optional, uses defaults)
- `runs` — Number of test runs for statistical accuracy (optional, default: 3)

## Examples

```bash
/jm-adk:test-perf
/jm-adk:test-perf url=https://staging.example.com runs=5
```

## Related Commands

- `/jm-adk:audit-perf` — Detailed performance audit
- `/jm-adk:audit-bundle` — Bundle size analysis
- `/jm-adk:design-perf` — Performance optimization plan
