---
description: "Generate project documentation"
user-invocable: true
---

# /jm-adk:docs

## Purpose

Generate comprehensive project documentation including architecture overview, API reference, setup guide, and contributing guidelines. Use this to create or update project documentation.

## Workflow

1. Analyze project structure, code comments, and existing documentation.
2. Generate architecture overview with diagrams and technology stack description.
3. Extract API documentation from code (JSDoc, TypeDoc) and generate reference pages.
4. Create setup guide, environment configuration, and contributing guidelines.

## Arguments

- `sections` — Documentation sections: comma-separated (optional, default: "overview,setup,api,architecture")
- `format` — Output format: `md` | `html` | `docusaurus` (optional, default: md)

## Examples

```bash
/jm-adk:docs
/jm-adk:docs sections="overview,setup,api" format=md
```

## Related Commands

- `/jm-adk:readme` — Generate README specifically
- `/jm-adk:changelog` — Generate changelog
- `/jm-adk:spec` — Generate functional specification
