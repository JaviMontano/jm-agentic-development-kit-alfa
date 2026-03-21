---
description: "Generate/update README.md"
user-invocable: true
---

# /jm-adk:readme

## Purpose

Generate or update the project README.md with badges, installation instructions, usage examples, and contribution guidelines. Use this to create a professional project landing page.

## Workflow

1. Analyze project structure, package.json, and existing documentation.
2. Generate README sections: title, badges, description, installation, usage, API, contributing.
3. Add technology stack badges, license information, and contact details.
4. Format with proper markdown and verify all links and code examples.

## Arguments

- `style` — README style: `minimal` | `standard` | `detailed` (optional, default: standard)
- `badges` — Include badges: comma-separated (optional, e.g., "build,coverage,license,version")

## Examples

```bash
/jm-adk:readme
/jm-adk:readme style=detailed badges="build,coverage,license"
```

## Related Commands

- `/jm-adk:docs` — Full project documentation
- `/jm-adk:changelog` — Generate changelog
- `/jm-adk:spec` — Functional specification
