---
description: "Design state management strategy"
user-invocable: true
---

# /jm-adk:design-state

## Purpose

Design a state management strategy for frontend applications, defining stores, actions, and data flow patterns. Use this to establish predictable state handling before implementation.

## Workflow

1. Identify state categories: local UI state, shared state, server state, URL state.
2. Select appropriate state management approach per category (signals, stores, cache).
3. Design state shape, actions/mutations, and side-effect handling.
4. Generate state architecture document with data flow diagrams.

## Arguments

- `input` — Application requirements or component hierarchy (required)
- `framework` — Target framework: `angular` | `react` | `vanilla` (optional, auto-detected)

## Examples

```bash
/jm-adk:design-state input="Dashboard with real-time data and user preferences"
/jm-adk:design-state input=./docs/components.md framework=react
```

## Related Commands

- `/jm-adk:design-components` — Component hierarchy design
- `/jm-adk:architect` — System architecture
- `/jm-adk:create-component` — Implement components with state
