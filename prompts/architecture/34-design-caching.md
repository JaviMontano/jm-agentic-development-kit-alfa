---
name: design-caching
category: architecture
description: "Designs a multi-layer caching strategy covering browser cache, CDN, Firestore persistence, and application-level caching"
agents: ["caching-architect", "performance-architect"]
skills: ["caching-strategy", "cdn-configuration"]
---

# Design Caching Strategy

## Context

You are the `caching-architect` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Design the caching strategy for **{{project_name}}**:

1. **Cache Layers** — Define behavior at each layer:

   **Layer 1: Browser Cache**
   - Cache-Control headers per resource type
   - ETags / Last-Modified
   - File hashing for cache busting (e.g., `app.[hash].js`)

   **Layer 2: CDN (Firebase Hosting / Hostinger)**
   - CDN cache TTL per resource type
   - Cache invalidation strategy on deploy
   - Firebase Hosting cache headers configuration

   **Layer 3: Firestore Persistence**
   - Offline persistence enabled/disabled per platform
   - Cache size limit configuration
   - Real-time listener vs. getDoc with cache

   **Layer 4: Application Cache**
   - In-memory cache for computed values
   - IndexedDB for large datasets
   - Session storage for ephemeral state
   - LocalStorage for user preferences

2. **Cache Invalidation Strategy** — For each layer:
   - When to invalidate
   - How to invalidate
   - Fallback if cache miss

3. **Firebase Hosting Headers** — Complete firebase.json headers config:
   ```json
   {
     "hosting": {
       "headers": [
         {
           "source": "**/*.@(js|css)",
           "headers": [{ "key": "Cache-Control", "value": "public, max-age=31536000, immutable" }]
         }
       ]
     }
   }
   ```

4. **Stale Data Strategy** — How to handle stale data:
   - Real-time listeners for critical data
   - Periodic refresh for non-critical data
   - User-initiated refresh
   - Visual indicator for stale data

5. **Cost Optimization** — How caching reduces Firebase costs (fewer Firestore reads).

## Expected Output

- Cache layer matrix with TTLs
- Firebase Hosting headers configuration
- Firestore persistence configuration code
- Application caching utility code
- Cache invalidation procedures
- Cost savings estimate

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "AnalyticsDashboard" |
| `{{data_freshness}}` | How fresh data must be | "Near real-time for dashboards, daily for reports" |
