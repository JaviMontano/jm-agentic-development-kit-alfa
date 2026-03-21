---
description: "Search functionality"
user-invocable: true
---

# /jm-adk:create-search

## Purpose

Generate a search feature with autocomplete, filters, and result highlighting. Use this to add search capabilities to content-heavy applications.

## Workflow

1. Define searchable fields, data source, and ranking criteria.
2. Generate search input with debounced autocomplete and suggestion dropdown.
3. Implement search results display with highlighting, filtering, and pagination.
4. Optimize with indexing strategy (Firestore composite indexes or Algolia integration).

## Arguments

- `name` — Search component name (optional, default: SearchBar)
- `source` — Data source: `firestore` | `algolia` | `static` (optional, default: firestore)
- `fields` — Searchable fields: comma-separated (required, e.g., "title,description,tags")

## Examples

```bash
/jm-adk:create-search fields="title,description,author"
/jm-adk:create-search source=algolia fields="name,category,tags"
```

## Related Commands

- `/jm-adk:create-table` — Table with built-in search
- `/jm-adk:create-component` — Create generic component
- `/jm-adk:design-db` — Design search-optimized schema
