---
description: "Design PWA architecture"
user-invocable: true
---

# /jm-adk:design-pwa

## Purpose

Design a Progressive Web App architecture including service worker strategy, caching, manifest, and offline behavior. Use this to plan installable, offline-capable web applications.

## Workflow

1. Define PWA requirements: offline capabilities, push notifications, install prompt.
2. Design service worker caching strategy (cache-first, network-first, stale-while-revalidate).
3. Plan manifest configuration, app shell architecture, and update flow.
4. Generate PWA architecture document with implementation checklist.

## Arguments

- `input` — Application requirements (required)
- `strategy` — Cache strategy: `cache-first` | `network-first` | `hybrid` (optional, default: hybrid)

## Examples

```bash
/jm-adk:design-pwa input="News reader app that works offline"
/jm-adk:design-pwa input=./docs/spec.md strategy=cache-first
```

## Related Commands

- `/jm-adk:add-pwa` — Convert existing app to PWA
- `/jm-adk:add-offline` — Add offline-first capability
- `/jm-adk:architect` — System architecture
