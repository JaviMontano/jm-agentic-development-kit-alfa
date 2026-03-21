---
description: "Push notification system"
user-invocable: true
---

# /jm-adk:create-notification

## Purpose

Generate a push notification system using Firebase Cloud Messaging with in-app toast notifications. Use this to add real-time user notifications to your application.

## Workflow

1. Configure Firebase Cloud Messaging and service worker for push notifications.
2. Generate notification permission request UI and subscription management.
3. Create in-app notification toast/bell component with notification center.
4. Implement server-side notification sending via Cloud Functions.

## Arguments

- `types` — Notification types: comma-separated (optional, default: "push,in-app")
- `position` — Toast position: `top-right` | `top-center` | `bottom-right` (optional, default: top-right)

## Examples

```bash
/jm-adk:create-notification
/jm-adk:create-notification types="push,in-app,email" position=bottom-right
```

## Related Commands

- `/jm-adk:create-component` — Create generic component
- `/jm-adk:design-pwa` — PWA architecture for push
- `/jm-adk:create-email` — Email notification templates
