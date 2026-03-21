---
name: design-seo
category: architecture
description: "Designs SEO architecture including meta tags, structured data, sitemap, and rendering strategy for SPA/SSR"
agents: ["seo-architect", "content-strategist"]
skills: ["seo-architecture", "structured-data"]
---

# Design SEO Architecture

## Context

You are the `seo-architect` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Design the SEO architecture for **{{project_name}}**:

Pages: {{page_list}}

1. **Rendering Strategy** — Choose and justify:
   - Client-Side Rendering (CSR) with prerendering
   - Server-Side Rendering (SSR) via Cloud Functions
   - Static Site Generation (SSG) at build time
   - Hybrid (per-route decision)

2. **Meta Tags** — For each page:
   ```html
   <title>{{page_title}} | {{site_name}}</title>
   <meta name="description" content="...">
   <meta property="og:title" content="...">
   <meta property="og:description" content="...">
   <meta property="og:image" content="...">
   <meta name="twitter:card" content="summary_large_image">
   <link rel="canonical" href="...">
   ```

3. **Structured Data** — JSON-LD for each page type:
   - Organization
   - WebSite with SearchAction
   - BreadcrumbList
   - Page-specific (Product, Article, FAQPage, etc.)

4. **URL Strategy** — Clean, semantic URLs:
   - URL pattern per page type
   - Trailing slash policy
   - Parameter handling
   - 301 redirect plan

5. **Sitemap** — Auto-generated sitemap.xml:
   - Static pages
   - Dynamic pages from Firestore (Cloud Function to generate)
   - Priority and changefreq per page type

6. **robots.txt** — Allow/disallow rules.

7. **Performance for SEO** — Core Web Vitals optimization (cross-reference with 32-design-performance).

8. **Firebase Hosting Rewrites** — For SPA routing:
   ```json
   { "rewrites": [{ "source": "**", "destination": "/index.html" }] }
   ```

## Expected Output

- Rendering strategy decision with justification
- Meta tag templates per page type
- JSON-LD structured data blocks
- URL pattern guide
- sitemap.xml template
- robots.txt
- Firebase hosting configuration

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "ContentSite" |
| `{{page_list}}` | List of pages/routes | "Home, About, Blog, Blog Post, Contact" |
| `{{site_name}}` | Brand name for title tags | "Acme Corp" |
