---
description: "Design component hierarchy"
user-invocable: true
---

# /jm-adk:design-components

## Purpose

Design the frontend component hierarchy with clear responsibility boundaries, data flow, and reusability patterns. Use this to plan a maintainable component architecture.

## Workflow

1. Analyze UI requirements and break down into pages, layouts, and features.
2. Design component tree with smart/dumb component separation and prop interfaces.
3. Define data flow direction, event handling, and shared component library.
4. Generate component hierarchy diagram and specification document.

## Arguments

- `input` — UI requirements, wireframes description, or design document (required)
- `framework` — Target framework: `angular` | `react` | `vanilla` (optional, auto-detected)

## Examples

```bash
/jm-adk:design-components input="Admin dashboard with sidebar, data tables, and charts"
/jm-adk:design-components input=./docs/wireframes.md framework=angular
```

## Related Commands

- `/jm-adk:design-state` — State management strategy
- `/jm-adk:create-component` — Implement individual components
- `/jm-adk:scaffold` — Scaffold project with component structure
