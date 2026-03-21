---
description: "Create DDD bounded context map"
user-invocable: true
---

# /jm-adk:domain-map

## Purpose

Create a Domain-Driven Design bounded context map showing subdomains, their relationships, and integration patterns. Use this to establish a shared understanding of the domain before architecture design.

## Workflow

1. Identify core, supporting, and generic subdomains from the project context.
2. Define bounded contexts with their ubiquitous language and responsibilities.
3. Map relationships between contexts (partnership, customer-supplier, conformist, ACL, etc.).
4. Generate a visual context map as a Mermaid diagram with integration annotations.

## Arguments

- `input` — Domain description or requirements document (required)
- `style` — Diagram style: `mermaid` | `ascii` (optional, default: mermaid)

## Examples

```bash
/jm-adk:domain-map input="Online marketplace with sellers, buyers, payments, and logistics"
/jm-adk:domain-map input=./docs/requirements.md
```

## Related Commands

- `/jm-adk:architect` — Design system architecture from domain map
- `/jm-adk:flows` — Map business processes within contexts
- `/jm-adk:diagram` — Generate other diagram types
