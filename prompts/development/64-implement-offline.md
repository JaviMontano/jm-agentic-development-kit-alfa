---
name: implement-offline
category: development
description: "Implements offline-first functionality with Firestore persistence, service worker caching, and sync queue"
agents: ["offline-developer", "pwa-developer"]
skills: ["offline-first", "sync-strategy"]
---

# Implement Offline Support

## Context

You are the `offline-developer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Implement offline support for **{{project_name}}**:

Offline features:
```
{{offline_features}}
```

1. **Firestore Offline Persistence**:
   ```javascript
   import { enableIndexedDbPersistence } from 'firebase/firestore';
   enableIndexedDbPersistence(db).catch((err) => {
     if (err.code === 'failed-precondition') { /* Multiple tabs */ }
     if (err.code === 'unimplemented') { /* Browser unsupported */ }
   });
   ```

2. **Network Status Detection**:
   ```javascript
   window.addEventListener('online', handleOnline);
   window.addEventListener('offline', handleOffline);
   // Also check Firestore connection state
   ```

3. **Offline UI Indicator** — Visual feedback:
   - Banner showing "You are offline"
   - Disable features that require connectivity
   - Pending changes indicator
   - Sync progress on reconnect

4. **Write Queue** — Handle writes while offline:
   - Firestore automatically queues writes
   - Custom queue for Cloud Function calls
   - Conflict resolution on sync
   - Retry logic with exponential backoff

5. **Cache Strategy** — What to cache for offline:
   - App shell (HTML, CSS, JS)
   - Critical data (user profile, recent items)
   - Images (limited by storage quota)
   - API responses (Cloud Function results)

6. **Service Worker** — Offline caching:
   ```javascript
   // sw.js - Cache app shell on install
   self.addEventListener('install', (event) => {
     event.waitUntil(
       caches.open('app-shell-v1').then(cache => cache.addAll(APP_SHELL_FILES))
     );
   });
   ```

7. **Data Sync Strategy** — On reconnection:
   - Priority order for sync
   - Conflict detection and resolution
   - User notification of sync results
   - Error handling for stale data

8. **Storage Management** — Handle storage limits:
   - Estimate available storage
   - Prioritize data to keep
   - Clean up old cached data

## Expected Output

- Firestore persistence setup code
- Network status service
- Offline UI components
- Service worker with caching strategy
- Sync queue implementation
- Storage management utilities

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "FieldServiceApp" |
| `{{offline_features}}` | What must work offline | "View tasks, submit reports, capture photos" |
