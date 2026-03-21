---
description: "Map business processes and data flows"
user-invocable: true
---

# /jm-adk:flows

## Purpose

Map business processes and data flows to understand how information moves through the system. Use this to identify integration points, bottlenecks, and automation opportunities.

## Workflow

1. Identify key business processes from requirements and domain context.
2. Map each process as a sequence/activity flow with actors, inputs, and outputs.
3. Identify data flows between systems, stores, and external services.
4. Generate flow diagrams (Mermaid) and a data flow matrix.

## Arguments

- `input` — Process description or requirements document (required)
- `type` — Flow type: `business` | `data` | `both` (optional, default: both)

## Examples

```bash
/jm-adk:flows input="Order processing from cart to delivery"
/jm-adk:flows input=./docs/requirements.md type=data
```

## Related Commands

- `/jm-adk:domain-map` — Bounded context map
- `/jm-adk:scenarios` — Evaluate implementation scenarios
- `/jm-adk:diagram` — Generate custom diagrams
