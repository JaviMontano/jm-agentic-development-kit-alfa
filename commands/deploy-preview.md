---
description: "Deploy to preview/staging channel"
user-invocable: true
---

# /jm-adk:deploy-preview

## Purpose

Deploy to a temporary preview or staging environment for testing and stakeholder review. Use this before deploying to production.

## Workflow

1. Build production bundle with preview environment configuration.
2. Deploy to a preview channel (Firebase preview channel or staging URL).
3. Generate a shareable preview URL with optional expiration time.
4. Report the preview URL and instructions for reviewers.

## Arguments

- `name` — Preview channel name (optional, auto-generated)
- `expires` — Expiration: `1h` | `1d` | `7d` | `30d` (optional, default: 7d)

## Examples

```bash
/jm-adk:deploy-preview
/jm-adk:deploy-preview name=feature-auth expires=1d
```

## Related Commands

- `/jm-adk:deploy` — Deploy to production
- `/jm-adk:deploy-firebase` — Deploy to Firebase
- `/jm-adk:review` — Code review before preview
