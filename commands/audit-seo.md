---
description: "Technical SEO audit"
user-invocable: true
---

# /jm-adk:audit-seo

## Purpose

Run a technical SEO audit checking metadata, structured data, crawlability, and Core Web Vitals impact on search rankings. Use this to optimize search engine visibility.

## Workflow

1. Crawl site pages and analyze metadata (title, description, canonical, Open Graph).
2. Validate structured data (JSON-LD) against schema.org standards.
3. Check crawlability: robots.txt, sitemap.xml, internal linking, and URL structure.
4. Generate SEO audit report with prioritized fixes and expected ranking impact.

## Arguments

- `url` — Target URL to audit (optional, uses local dev server)
- `pages` — Maximum pages to crawl (optional, default: 50)

## Examples

```bash
/jm-adk:audit-seo
/jm-adk:audit-seo url=https://example.com pages=100
```

## Related Commands

- `/jm-adk:design-seo` — Design SEO strategy
- `/jm-adk:audit-perf` — Performance affects SEO
- `/jm-adk:create-landing` — SEO-optimized landing pages
