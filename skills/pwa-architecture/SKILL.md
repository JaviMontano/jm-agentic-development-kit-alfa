---
name: pwa-architecture
author: JM Labs (Javier Montaño)
version: 1.0.0
description: >
  Designs Progressive Web App architectures with service workers, web app
  manifests, offline-first strategies, and Web Push notifications. Covers
  caching strategies, background sync, and installability.
  Trigger: "PWA", "service worker", "offline-first", "web manifest", "Web Push"
allowed-tools:
  - Read
  - Glob
  - Grep
  - Bash
---

# PWA Architecture

> "The best app is the one you already have installed — the browser." — Alex Russell

## TL;DR

Designs Progressive Web App architectures with service workers, web app manifests, offline-first caching, and push notifications to deliver app-like experiences on the web. Use this skill when building installable web apps, enabling offline functionality, or implementing push notifications.

## Procedure

### Step 1: Discover
- Assess current web app's PWA readiness (Lighthouse PWA audit)
- Identify offline-critical features and data
- Review network conditions of target users (spotty connectivity, offline scenarios)
- Inventory assets and API calls that need caching strategies

### Step 2: Analyze
- Choose caching strategy per resource type:
  - **Cache First**: static assets, fonts, images
  - **Network First**: API data that must be fresh
  - **Stale While Revalidate**: content that can be slightly stale
  - **Network Only**: authentication, payment processing
- Plan offline UX: what works offline, what shows graceful degradation
- Design background sync for queued operations during offline periods
- Evaluate Web Push requirements: permission flow, payload design, re-engagement

### Step 3: Execute
- Create web app manifest with icons, theme color, display mode, shortcuts
- Implement service worker with Workbox for caching strategies
- Design offline fallback pages for uncached routes
- Implement background sync for form submissions and data mutations
- Set up Web Push with Firebase Cloud Messaging (FCM)
- Configure app shell architecture for instant loading

### Step 4: Validate
- Run Lighthouse PWA audit — target 100% score
- Test offline mode: airplane mode, slow 3G, lie-fi scenarios
- Verify service worker updates correctly (skipWaiting, clients.claim)
- Confirm install prompt appears on supported browsers

## Quality Criteria

- [ ] Lighthouse PWA score is 100%
- [ ] Web manifest includes all required fields and icon sizes
- [ ] Service worker handles updates without breaking cached content
- [ ] Offline experience is graceful with clear user feedback
- [ ] Evidence tags applied to all claims

## Anti-Patterns

- Cache everything forever without versioning or expiration
- Service worker that blocks updates and traps users on old versions
- Push notifications without clear user value (spam-like re-engagement)

## Related Skills

- `caching-strategy` — detailed caching patterns used by service workers
- `performance-architecture` — PWA contributes to Core Web Vitals
- `responsive-design` — PWAs must work across all device sizes
