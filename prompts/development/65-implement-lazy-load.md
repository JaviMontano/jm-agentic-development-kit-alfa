---
name: implement-lazy-load
category: development
description: "Implements lazy loading for images, components, routes, and data to improve initial page load performance"
agents: ["performance-developer", "frontend-developer"]
skills: ["lazy-loading", "code-splitting"]
---

# Implement Lazy Loading

## Context

You are the `performance-developer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Implement lazy loading for **{{project_name}}**:

1. **Image Lazy Loading** — Defer off-screen images:
   ```html
   <img src="placeholder.svg" data-src="actual.webp" loading="lazy" alt="...">
   ```
   - Native `loading="lazy"` attribute
   - Intersection Observer fallback for older browsers
   - Blur-up placeholder technique
   - Low-quality image placeholder (LQIP)
   - Responsive images with srcset

2. **Route-Based Code Splitting** — Lazy load pages:
   ```javascript
   // React
   const Dashboard = React.lazy(() => import('./pages/Dashboard'));
   // Angular
   { path: 'dashboard', loadComponent: () => import('./pages/dashboard.component') }
   // Vanilla
   async function loadPage(name) { return import(`./pages/${name}.js`); }
   ```

3. **Component Lazy Loading** — Heavy components:
   - Chart libraries (Chart.js)
   - Map libraries (Leaflet)
   - Rich text editors
   - PDF viewers
   - Load on visibility or user interaction

4. **Data Lazy Loading** — Firestore pagination:
   - Initial page load: minimal data
   - Scroll or click to load more
   - Infinite scroll with Intersection Observer
   - Skeleton placeholders during fetch

5. **Third-Party Script Loading** — Defer non-critical scripts:
   ```html
   <script defer src="analytics.js"></script>
   ```
   - Analytics: load after interactive
   - Chat widgets: load on scroll or timer
   - Social embeds: load on visibility

6. **Preloading** — Predictive loading:
   - Preload likely next routes on hover
   - Prefetch data for probable next actions
   - `<link rel="prefetch">` for next-page resources

7. **Loading States** — During lazy load:
   - Skeleton components
   - Suspense boundaries (React)
   - Loading spinners
   - Error boundaries for failed loads

## Expected Output

- Image lazy loading utility
- Route splitting configuration
- Component lazy loading patterns
- Data pagination with Intersection Observer
- Third-party script loader
- Preloading strategy
- Loading/error state components

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "MediaPortal" |
| `{{framework}}` | Frontend framework | "react" |
