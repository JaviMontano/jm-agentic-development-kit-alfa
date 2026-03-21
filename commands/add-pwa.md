---
description: "Convert to Progressive Web App"
user-invocable: true
---

# /jm-adk:add-pwa

## Purpose

Convert an existing web application into a Progressive Web App with manifest, service worker, install prompt, and push notifications. Use this for installable, app-like web experiences.

## Workflow

1. Generate web app manifest with icons, theme colors, and display mode.
2. Implement service worker with caching, offline fallback, and update flow.
3. Add install prompt UI with custom banner and A2HS (Add to Home Screen) handling.
4. Run Lighthouse PWA audit and fix any failing criteria.

## Arguments

- `name` — App name for manifest (optional, uses project name)
- `features` — PWA features: comma-separated (optional, default: "install,offline,push")
- `icons` — Generate placeholder icons (optional, default: true)

## Examples

```bash
/jm-adk:add-pwa
/jm-adk:add-pwa name="My App" features="install,offline,push"
```

## Related Commands

- `/jm-adk:add-offline` — Offline capability only
- `/jm-adk:design-pwa` — Design PWA architecture first
- `/jm-adk:create-notification` — Push notifications
