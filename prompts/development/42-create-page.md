---
name: create-page
category: development
description: "Creates a complete page/route with layout, data fetching from Firestore, loading states, and error handling"
agents: ["page-developer", "frontend-developer"]
skills: ["page-creation", "route-setup"]
---

# Create Page

## Context

You are the `page-developer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Create the **{{page_name}}** page for **{{project_name}}**:

Page requirements:
```
{{page_requirements}}
```

Generate the following:

1. **Page Component** — Complete page file:
   - HTML structure with semantic elements
   - CSS styles (scoped, using design tokens)
   - JavaScript logic
   - Responsive layout (mobile-first)

2. **Data Fetching** — Firestore integration:
   ```javascript
   import { collection, query, where, onSnapshot } from 'firebase/firestore';
   // Real-time listener or one-time fetch based on requirements
   ```
   - Loading state (skeleton or spinner)
   - Error state (user-friendly message + retry)
   - Empty state (illustration + call to action)

3. **Route Configuration** — Add to router:
   - Path definition
   - Route guard (auth check if needed)
   - Lazy loading setup
   - Page title and meta tags

4. **Accessibility** — Ensure:
   - Proper heading hierarchy
   - Landmark regions
   - Focus management on route change
   - ARIA labels where needed

5. **SEO** — If public page:
   - Meta tags (title, description, OG)
   - Structured data (JSON-LD)

6. **Responsive Behavior** — Specify layout at:
   - Mobile (<768px)
   - Tablet (768-1024px)
   - Desktop (>1024px)

## Expected Output

- Complete page component code (HTML + CSS + JS)
- Firestore query code
- Route configuration
- Loading/error/empty state components
- Responsive CSS

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "TaskManager" |
| `{{page_name}}` | Name of the page | "Dashboard" |
| `{{page_requirements}}` | What the page should display and do | "Show user's tasks grouped by status…" |
| `{{auth_required}}` | Does the page require authentication? | "yes" |
