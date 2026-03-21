---
description: "Design system architecture with C4 diagrams"
user-invocable: true
---

# /jm-adk:architect

## Purpose

Design a complete system architecture using the C4 model (Context, Containers, Components, Code). Use this to create a structured, visual architecture that guides development.

## Workflow

1. Analyze requirements and domain model to identify architectural drivers and constraints.
2. Create C4 Level 1 (System Context) and Level 2 (Container) diagrams showing system boundaries.
3. Design Level 3 (Component) diagrams for each container with technology selections.
4. Document architectural decisions as ADRs and generate a complete architecture document.

## Arguments

- `input` — Requirements or specification document (required)
- `style` — Architecture style: `monolith` | `microservices` | `serverless` | `hybrid` (optional, auto-detected)
- `level` — C4 depth: `1` | `2` | `3` | `all` (optional, default: all)

## Examples

```bash
/jm-adk:architect input="Real-time collaboration platform"
/jm-adk:architect input=./docs/spec.md style=serverless level=2
```

## Related Commands

- `/jm-adk:domain-map` — Bounded context map as input
- `/jm-adk:design-api` — Design API contracts
- `/jm-adk:adr` — Generate architecture decision records
