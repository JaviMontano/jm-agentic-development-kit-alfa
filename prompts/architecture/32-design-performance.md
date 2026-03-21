---
name: design-performance
category: architecture
description: "Designs a performance budget and optimization strategy for Core Web Vitals and Firebase query efficiency"
agents: ["performance-architect", "frontend-architect"]
skills: ["performance-optimization", "web-vitals"]
---

# Design Performance Strategy

## Context

You are the `performance-architect` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Design the performance strategy for **{{project_name}}**:

1. **Performance Budget** — Set targets:
   | Metric | Target | Tool |
   |--------|--------|------|
   | LCP | < 2.5s | Lighthouse |
   | FID/INP | < 200ms | Lighthouse |
   | CLS | < 0.1 | Lighthouse |
   | TTI | < 3.5s | Lighthouse |
   | Total Bundle | < {{bundle_target}}KB | Webpack Analyzer |
   | First Load | < 200KB JS | - |

2. **Loading Strategy** — Optimize critical rendering path:
   - Critical CSS inlining
   - Font loading strategy (font-display: swap)
   - JavaScript loading (async, defer, module)
   - Preconnect to Firebase domains
   - Resource hints (preload, prefetch)

3. **Code Splitting** — Route-based and component-based:
   - Entry points
   - Lazy-loaded routes
   - Dynamic imports for heavy components
   - Shared chunks optimization

4. **Firestore Query Optimization** — Minimize reads:
   - Query result caching
   - Pagination with cursors (not offset)
   - Listener management (subscribe/unsubscribe lifecycle)
   - Data denormalization to avoid joins
   - Batch reads for initial page load

5. **Image Optimization** — Strategy:
   - WebP/AVIF with fallbacks
   - Responsive images with srcset
   - Lazy loading with Intersection Observer
   - Image CDN consideration

6. **Runtime Performance** — Avoid jank:
   - Virtual scrolling for long lists
   - Debounce/throttle for events
   - Web Workers for heavy computation
   - requestAnimationFrame for animations

7. **Monitoring** — Performance monitoring setup:
   - Firebase Performance Monitoring integration
   - Custom traces for key user flows
   - Real User Monitoring (RUM)

## Expected Output

- Performance budget table
- Loading optimization checklist
- Code splitting configuration
- Firestore query optimization guide
- Image optimization pipeline
- Monitoring setup code

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "DashboardApp" |
| `{{bundle_target}}` | Target bundle size in KB | "300" |
