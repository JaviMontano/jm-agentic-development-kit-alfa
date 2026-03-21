---
description: "Landing page with analytics"
user-invocable: true
---

# /jm-adk:scaffold-landing

## Purpose

Scaffold a conversion-optimized landing page with analytics tracking, responsive design, and SEO best practices. Use this for marketing pages, product launches, or lead generation.

## Workflow

1. Generate landing page structure with hero, features, testimonials, CTA sections.
2. Implement responsive design with mobile-first CSS and performance optimization.
3. Set up Google Analytics, conversion tracking, and event listeners.
4. Configure SEO metadata, Open Graph tags, and structured data.

## Arguments

- `name` — Project name (optional)
- `sections` — Page sections: comma-separated (optional, default: "hero,features,testimonials,cta")
- `analytics` — Analytics: `ga4` | `plausible` | `none` (optional, default: ga4)

## Examples

```bash
/jm-adk:scaffold-landing
/jm-adk:scaffold-landing name=product-launch sections="hero,features,pricing,cta"
```

## Related Commands

- `/jm-adk:scaffold-vanilla` — More general vanilla scaffold
- `/jm-adk:create-landing` — Create landing within existing project
- `/jm-adk:deploy-hostinger` — Deploy to Hostinger
