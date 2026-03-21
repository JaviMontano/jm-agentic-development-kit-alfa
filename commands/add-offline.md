---
description: "Add offline-first capability"
user-invocable: true
---

# /jm-adk:add-offline

## Purpose

Add offline-first capability with service worker caching, background sync, and offline UI indicators. Use this to make your application work without internet connectivity.

## Workflow

1. Audit application for offline requirements: which pages and data need offline access.
2. Implement service worker with appropriate caching strategies per resource type.
3. Add offline data queue with background sync for pending mutations.
4. Create offline UI indicators and fallback pages for uncached content.

## Arguments

- `strategy` — Cache strategy: `cache-first` | `network-first` | `stale-while-revalidate` (optional, default: stale-while-revalidate)
- `scope` — Offline scope: `full` | `read-only` | `critical-paths` (optional, default: critical-paths)

## Examples

```bash
/jm-adk:add-offline
/jm-adk:add-offline strategy=cache-first scope=full
```

## Related Commands

- `/jm-adk:add-pwa` — Full PWA conversion
- `/jm-adk:design-pwa` — Design PWA architecture
- `/jm-adk:evolve` — General enhancement meta-command
