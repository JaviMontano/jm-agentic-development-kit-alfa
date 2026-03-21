---
description: "Design technical SEO strategy"
user-invocable: true
---

# /jm-adk:design-seo

## Purpose

Design a technical SEO strategy covering metadata, structured data, sitemap, and crawlability. Use this to ensure your application is search-engine friendly from the start.

## Workflow

1. Analyze application type and content structure for SEO requirements.
2. Design metadata strategy, Open Graph tags, and structured data (JSON-LD).
3. Plan sitemap generation, robots.txt, canonical URLs, and URL structure.
4. Generate SEO implementation checklist with priority-ordered tasks.

## Arguments

- `input` — Application description or site structure (required)
- `focus` — SEO focus: `local` | `ecommerce` | `content` | `saas` (optional, auto-detected)

## Examples

```bash
/jm-adk:design-seo input="Recipe blog with categories and user reviews"
/jm-adk:design-seo input=./docs/sitemap.md focus=ecommerce
```

## Related Commands

- `/jm-adk:audit-seo` — Technical SEO audit
- `/jm-adk:design-perf` — Performance affects SEO
- `/jm-adk:create-landing` — SEO-optimized landing pages
