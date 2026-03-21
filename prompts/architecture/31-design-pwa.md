---
name: design-pwa
category: architecture
description: "Designs Progressive Web App architecture including service worker, manifest, caching strategy, and install experience"
agents: ["pwa-architect", "frontend-architect"]
skills: ["pwa-design", "service-worker"]
---

# Design PWA

## Context

You are the `pwa-architect` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Design the PWA architecture for **{{project_name}}**:

1. **Web App Manifest** — Complete `manifest.json`:
   - App name, short_name, description
   - Icons (192x192, 512x512, maskable)
   - Theme color, background color
   - Display mode (standalone, fullscreen)
   - Start URL, scope
   - Screenshots for install prompt

2. **Service Worker Strategy** — Caching strategies per resource type:
   | Resource | Strategy | Max Age | Fallback |
   |----------|----------|---------|----------|
   | HTML shell | Cache First | 1 day | offline.html |
   | CSS/JS | Stale While Revalidate | 1 week | - |
   | Images | Cache First | 30 days | placeholder |
   | API (Firestore) | Network First | - | cached data |
   | Fonts | Cache First | 1 year | system font |

3. **Offline Experience** — What works offline:
   - Cached pages and data
   - Offline indicator UI
   - Queue for pending writes (sync with Firestore when back online)
   - Firestore offline persistence configuration

4. **Install Experience** — Custom install prompt:
   - When to show (after N visits or specific action)
   - Dismiss handling
   - Platform-specific instructions (iOS Safari, Android Chrome)

5. **Push Notifications** — Firebase Cloud Messaging setup:
   - Permission request timing
   - Notification payload structure
   - Background vs foreground handling
   - Topic subscriptions

6. **Update Strategy** — How to handle new versions:
   - Skip waiting pattern
   - User prompt for update
   - Cache busting strategy

7. **Lighthouse PWA Checklist** — Ensure all criteria pass.

## Expected Output

- Complete manifest.json
- Service worker code (sw.js)
- Caching strategy configuration
- Offline page HTML
- FCM integration code
- Lighthouse PWA checklist

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "FieldServiceApp" |
| `{{offline_features}}` | Features that must work offline | "View tasks, submit reports" |
