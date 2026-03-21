---
description: "Blog with markdown and categories"
user-invocable: true
---

# /jm-adk:create-blog

## Purpose

Generate a blog system with markdown content support, categories, tags, and SEO optimization. Use this to add content publishing capabilities to your application.

## Workflow

1. Design blog data model with posts, categories, tags, and author profiles.
2. Generate blog listing page with pagination, category filtering, and search.
3. Create post detail page with markdown rendering, table of contents, and social sharing.
4. Implement admin interface for creating/editing posts with markdown editor.

## Arguments

- `name` — Blog section name (optional, default: blog)
- `storage` — Content storage: `firestore` | `markdown-files` (optional, default: firestore)
- `features` — Features: comma-separated (optional, default: "categories,tags,search,rss")

## Examples

```bash
/jm-adk:create-blog
/jm-adk:create-blog storage=markdown-files features="categories,tags,search,rss,comments"
```

## Related Commands

- `/jm-adk:create-page` — Create static pages
- `/jm-adk:design-seo` — SEO strategy for blog
- `/jm-adk:create-search` — Search for blog content
