---
description: "Generate HTML page with semantic markup"
user-invocable: true
---

# /jm-adk:create-page

## Purpose

Generate a complete HTML page with semantic markup, accessibility attributes, and responsive styling. Use this to add new pages to an existing project.

## Workflow

1. Analyze existing project structure and design patterns for consistency.
2. Generate semantic HTML5 page with proper heading hierarchy and ARIA landmarks.
3. Apply project CSS conventions and add responsive layout with mobile-first approach.
4. Register the page in navigation and verify cross-page links.

## Arguments

- `name` — Page name/slug (required)
- `title` — Page title (optional, derived from name)
- `sections` — Page sections: comma-separated (optional)

## Examples

```bash
/jm-adk:create-page name=about
/jm-adk:create-page name=pricing title="Plans & Pricing" sections="hero,tiers,faq"
```

## Related Commands

- `/jm-adk:create-component` — Create reusable component
- `/jm-adk:create-nav` — Create navigation component
- `/jm-adk:create-landing` — Create conversion-optimized page
