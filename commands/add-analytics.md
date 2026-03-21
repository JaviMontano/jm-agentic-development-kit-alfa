---
description: "Add Google Analytics tracking"
user-invocable: true
---

# /jm-adk:add-analytics

## Purpose

Add Google Analytics 4 tracking with custom events, conversion goals, and privacy-compliant consent management. Use this to measure user behavior and application performance.

## Workflow

1. Configure GA4 measurement ID and initialize the tracking script.
2. Set up automatic page view tracking and core event listeners.
3. Define custom events for key user actions (sign-up, purchase, feature usage).
4. Implement cookie consent banner and privacy-compliant data collection.

## Arguments

- `id` — GA4 Measurement ID (required, e.g., "G-XXXXXXXXXX")
- `events` — Custom events: comma-separated (optional, e.g., "sign_up,purchase,share")
- `consent` — Consent mode: `banner` | `implicit` | `none` (optional, default: banner)

## Examples

```bash
/jm-adk:add-analytics id="G-ABC123XYZ"
/jm-adk:add-analytics id="G-ABC123XYZ" events="sign_up,checkout,share" consent=banner
```

## Related Commands

- `/jm-adk:evolve` — General enhancement meta-command
- `/jm-adk:create-landing` — Landing pages with analytics
- `/jm-adk:audit-perf` — Verify analytics impact on performance
