---
description: "Add internationalization"
user-invocable: true
---

# /jm-adk:add-i18n

## Purpose

Add internationalization (i18n) support to an existing project with language switching, translation files, and RTL support. Use this to make your application multilingual.

## Workflow

1. Audit codebase for hardcoded strings and extract them into translation keys.
2. Generate translation file structure with default locale and placeholder translations.
3. Implement language switcher component and locale detection (browser, URL, cookie).
4. Add RTL support for applicable languages and verify layout in both directions.

## Arguments

- `locales` — Supported locales: comma-separated (required, e.g., "en,es,pt")
- `default` — Default locale (optional, default: first in list)
- `strategy` — i18n strategy: `json-files` | `framework-native` (optional, auto-detected)

## Examples

```bash
/jm-adk:add-i18n locales="en,es"
/jm-adk:add-i18n locales="en,es,pt,ar" default=en
```

## Related Commands

- `/jm-adk:evolve` — General enhancement meta-command
- `/jm-adk:add-a11y` — Accessibility with i18n considerations
- `/jm-adk:create-component` — Create language switcher
