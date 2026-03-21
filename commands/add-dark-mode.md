---
description: "Add dark mode to existing project"
user-invocable: true
---

# /jm-adk:add-dark-mode

## Purpose

Add a complete dark mode implementation with theme toggle, system preference detection, and persistent user choice. Use this to enhance UX with light/dark theme support.

## Workflow

1. Audit existing CSS for hardcoded colors and create a CSS custom properties color system.
2. Define light and dark theme palettes with semantic color tokens.
3. Implement theme toggle component with system preference detection and localStorage persistence.
4. Apply dark theme styles across all components and verify contrast ratios meet WCAG AA.

## Arguments

- `strategy` — Implementation: `css-variables` | `class-toggle` | `media-query` (optional, default: css-variables)
- `persist` — Persistence: `localStorage` | `cookie` | `none` (optional, default: localStorage)

## Examples

```bash
/jm-adk:add-dark-mode
/jm-adk:add-dark-mode strategy=css-variables persist=localStorage
```

## Related Commands

- `/jm-adk:evolve` — General enhancement meta-command
- `/jm-adk:add-a11y` — Verify contrast in both themes
- `/jm-adk:review` — Review dark mode implementation
