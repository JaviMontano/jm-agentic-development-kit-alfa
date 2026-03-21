---
description: "Pure HTML/CSS/JS project"
user-invocable: true
---

# /jm-adk:scaffold-vanilla

## Purpose

Scaffold a pure HTML/CSS/JavaScript project without frameworks, optimized for performance and simplicity. Use this for static sites, landing pages, or lightweight applications.

## Workflow

1. Generate project structure with semantic HTML5, modern CSS (custom properties, grid), and ES modules.
2. Set up build tooling with Vite for dev server, hot reload, and production bundling.
3. Create base pages, CSS reset/utilities, and JavaScript module structure.
4. Configure deployment target and verify local development setup.

## Arguments

- `name` — Project name (optional)
- `pages` — Number of initial pages to create (optional, default: 1)

## Examples

```bash
/jm-adk:scaffold-vanilla
/jm-adk:scaffold-vanilla name=portfolio pages=3
```

## Related Commands

- `/jm-adk:scaffold` — Meta-scaffold with template selection
- `/jm-adk:deploy-hostinger` — Deploy to Hostinger
- `/jm-adk:create-page` — Add more pages
