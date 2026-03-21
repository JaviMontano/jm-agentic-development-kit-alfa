---
name: check-browser-compat
category: quality
description: "Checks browser compatibility for CSS features, JavaScript APIs, and Web APIs against target browser matrix"
agents: ["compat-checker", "frontend-qa"]
skills: ["browser-compatibility", "polyfill-planning"]
---

# Check Browser Compatibility

## Context

You are the `compat-checker` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Check browser compatibility for **{{project_name}}**:

Target browsers: {{target_browsers}}

Codebase features to check:
```
{{features_used}}
```

1. **CSS Feature Compatibility**:
   | Feature | Chrome | Firefox | Safari | Edge | iOS Safari | Status |
   |---------|--------|---------|--------|------|------------|--------|
   - CSS Grid / Subgrid
   - CSS Custom Properties
   - CSS Container Queries
   - CSS :has() selector
   - CSS aspect-ratio
   - backdrop-filter
   - Scroll snap

2. **JavaScript API Compatibility**:
   | API | Chrome | Firefox | Safari | Edge | Polyfill |
   |-----|--------|---------|--------|------|----------|
   - Optional chaining (?.)
   - Nullish coalescing (??)
   - Intersection Observer
   - ResizeObserver
   - Structured Clone
   - Top-level await

3. **Web API Compatibility**:
   - Service Workers
   - Web Push API
   - Web Share API
   - Geolocation API
   - IndexedDB
   - WebSockets

4. **Polyfill Plan** — For unsupported features:
   - Polyfill library (core-js, unfetch)
   - Ponyfill vs polyfill decision
   - Bundle size impact of polyfills
   - Feature detection with fallback

5. **CSS Fallback Strategy**:
   ```css
   /* Fallback for older browsers */
   .grid { display: flex; flex-wrap: wrap; }
   /* Modern browsers */
   @supports (display: grid) {
     .grid { display: grid; grid-template-columns: repeat(3, 1fr); }
   }
   ```

6. **Testing Plan** — Browser testing matrix:
   - Manual testing checklist per browser
   - BrowserStack/Sauce Labs configuration
   - Key flows to test in each browser

## Expected Output

- CSS compatibility matrix
- JS API compatibility matrix
- Web API compatibility matrix
- Polyfill requirements list
- CSS fallback code examples
- Browser testing checklist

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "PublicSite" |
| `{{target_browsers}}` | Browser support targets | "Chrome 90+, Firefox 90+, Safari 15+, Edge 90+" |
| `{{features_used}}` | Features to check | "CSS Grid, IntersectionObserver, ES2022" |
