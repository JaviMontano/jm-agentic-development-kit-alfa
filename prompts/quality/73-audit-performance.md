---
name: audit-performance
category: quality
description: "Performs a comprehensive performance audit with Lighthouse analysis, Core Web Vitals review, and optimization recommendations"
agents: ["performance-auditor", "frontend-analyst"]
skills: ["performance-audit", "lighthouse-analysis"]
---

# Audit Performance

## Context

You are the `performance-auditor` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Perform a performance audit for **{{project_name}}** at **{{url}}**:

1. **Core Web Vitals Assessment**:
   | Metric | Target | Measured | Status |
   |--------|--------|----------|--------|
   | LCP | < 2.5s | | |
   | INP | < 200ms | | |
   | CLS | < 0.1 | | |
   | FCP | < 1.8s | | |
   | TTFB | < 800ms | | |
   | TTI | < 3.5s | | |

2. **Bundle Analysis** — JavaScript audit:
   - Total JS size (compressed/uncompressed)
   - Largest bundles/chunks
   - Unused JavaScript percentage
   - Tree-shaking effectiveness
   - Duplicate dependencies

3. **Network Analysis** — Request waterfall:
   - Total requests count
   - Total transfer size
   - Render-blocking resources
   - Third-party resource impact
   - HTTP/2 multiplexing usage

4. **Firebase-Specific** — Performance check:
   - Firestore read count on initial load
   - Listener count (active subscriptions)
   - Auth initialization time
   - Cloud Functions cold start impact
   - Firebase SDK bundle size

5. **Image Audit** — Image optimization:
   - Unoptimized images (format, size)
   - Missing lazy loading
   - Missing responsive images
   - Missing alt text

6. **CSS Audit** — Stylesheet analysis:
   - Total CSS size
   - Unused CSS percentage
   - Render-blocking stylesheets
   - Critical CSS extraction needed

7. **Optimization Recommendations** — Prioritized list:
   | Priority | Recommendation | Impact | Effort |
   |----------|---------------|--------|--------|
   | P0 | | High | Low |
   - Quick wins (implement immediately)
   - Medium-term improvements
   - Long-term architectural changes

## Expected Output

- Core Web Vitals report card
- Bundle analysis summary
- Network waterfall analysis
- Firebase performance review
- Prioritized optimization checklist
- Before/after projections

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "WebApp" |
| `{{url}}` | URL to audit | "https://app.example.com" |
