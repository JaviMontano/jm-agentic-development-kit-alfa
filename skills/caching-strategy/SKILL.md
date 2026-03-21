---
name: caching-strategy
author: JM Labs (Javier Montaño)
version: 1.0.0
description: >
  Designs multi-layer caching strategies spanning browser cache, CDN edge
  cache, service worker cache, and Firestore offline persistence. Covers
  cache invalidation, TTL policies, and stale-while-revalidate patterns.
  Trigger: "caching", "CDN cache", "cache invalidation", "Firestore offline", "TTL"
allowed-tools:
  - Read
  - Glob
  - Grep
  - Bash
---

# Caching Strategy

> "There are only two hard things in Computer Science: cache invalidation and naming things." — Phil Karlton

## TL;DR

Designs multi-layer caching strategies across browser, CDN, service worker, and database layers with cache invalidation policies and TTL management. Use this skill when optimizing load times, reducing server costs, enabling offline access, or when cache-related bugs are causing stale data issues.

## Procedure

### Step 1: Discover
- Inventory cacheable resources: static assets, API responses, computed data
- Analyze cache hit ratios and miss patterns in current infrastructure
- Identify data freshness requirements per resource type
- Review current cache headers and CDN configuration

### Step 2: Analyze
- Design cache layers and their responsibilities:
  - **Browser Cache**: Cache-Control headers for static assets
  - **CDN Edge**: Geographic distribution, cache keys, purge strategy
  - **Service Worker**: Offline access, runtime caching strategies
  - **Application Cache**: In-memory stores, Firestore offline persistence
- Define TTL policies based on data freshness requirements
- Plan cache invalidation triggers: time-based, event-based, version-based

### Step 3: Execute
- Configure Cache-Control headers: immutable for hashed assets, short TTL for HTML
- Set up CDN cache rules with proper Vary headers and cache keys
- Implement service worker caching with Workbox strategies per resource type
- Enable Firestore offline persistence for mobile/flaky connections
- Design cache warming strategy for critical resources
- Implement cache busting: content hashing for assets, query params for API

### Step 4: Validate
- Verify cache hit ratios are above 90% for static assets
- Confirm cache invalidation works within acceptable staleness windows
- Test that stale cache does not serve incorrect data to users
- Check cache headers with curl or browser DevTools Network panel

## Quality Criteria

- [ ] Each resource type has a defined caching strategy and TTL
- [ ] Cache invalidation strategy handles content updates promptly
- [ ] Static assets use content hashing for cache busting
- [ ] Firestore offline persistence is configured with appropriate cache size
- [ ] Evidence tags applied to all claims

## Anti-Patterns

- Caching authenticated/personalized content on shared CDN
- No cache busting: users stuck with stale JavaScript after deploys
- Over-caching: serving stale API data when freshness is critical

## Related Skills

- `performance-architecture` — caching directly impacts Core Web Vitals
- `pwa-architecture` — service worker caching for offline access
- `infrastructure-design` — CDN and cache infrastructure topology
