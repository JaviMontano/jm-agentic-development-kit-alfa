---
name: audit-seo
category: quality
description: "Performs an SEO audit checking meta tags, structured data, page speed, mobile-friendliness, and indexability"
agents: ["seo-auditor", "content-analyst"]
skills: ["seo-audit", "search-optimization"]
---

# Audit SEO

## Context

You are the `seo-auditor` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Perform an SEO audit for **{{project_name}}** at **{{url}}**:

1. **Technical SEO**:
   - robots.txt present and correct
   - sitemap.xml present, valid, and submitted
   - SSL certificate valid
   - Mobile-friendly (responsive)
   - Page speed (LCP < 2.5s)
   - Canonical URLs set
   - Hreflang tags (if multilingual)
   - Clean URL structure

2. **On-Page SEO** — Per page audit:
   | Page | Title | Meta Desc | H1 | OG Tags | Schema | Issues |
   |------|-------|-----------|-----|---------|--------|--------|
   - Title length (50-60 chars)
   - Meta description length (150-160 chars)
   - Single H1 per page
   - Heading hierarchy (H1 > H2 > H3)
   - Image alt text completeness

3. **Structured Data** — JSON-LD validation:
   - Schema types present
   - Required properties filled
   - Google Rich Results Test compatibility

4. **SPA/CSR Considerations** — For single-page apps:
   - Pre-rendering or SSR setup
   - Dynamic rendering for bots
   - Hash vs history routing
   - Firebase Hosting rewrites for clean URLs

5. **Content Analysis**:
   - Thin content pages
   - Duplicate content
   - Keyword optimization
   - Internal linking structure

6. **Performance Impact on SEO**:
   - Core Web Vitals scores
   - Mobile page speed
   - Server response time

7. **Remediation Plan**:
   | Priority | Issue | Impact | Fix | Effort |
   |----------|-------|--------|-----|--------|

## Expected Output

- Technical SEO checklist (pass/fail)
- Per-page on-page SEO audit table
- Structured data validation results
- SPA-specific SEO recommendations
- Prioritized remediation plan
- Firebase Hosting configuration fixes

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "BusinessSite" |
| `{{url}}` | URL to audit | "https://www.example.com" |
