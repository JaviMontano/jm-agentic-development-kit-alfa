---
description: "Generate Mermaid diagram"
user-invocable: true
---

# /jm-adk:diagram

## Purpose

Generate Mermaid diagrams for architecture, sequences, flows, ERDs, or any other visual representation. Use this to create visual documentation from text descriptions.

## Workflow

1. Analyze the diagram request and determine the appropriate Mermaid diagram type.
2. Generate Mermaid syntax with proper nodes, edges, labels, and styling.
3. Validate the Mermaid syntax for correctness.
4. Output the diagram code block ready for rendering in markdown viewers.

## Arguments

- `type` — Diagram type: `flowchart` | `sequence` | `class` | `er` | `gantt` | `c4` | `mindmap` (required)
- `input` — Description of what to diagram (required)
- `direction` — Flow direction: `TB` | `LR` | `BT` | `RL` (optional, default: TB)

## Examples

```bash
/jm-adk:diagram type=sequence input="User login flow with OAuth"
/jm-adk:diagram type=er input="E-commerce with users, products, orders, reviews"
/jm-adk:diagram type=flowchart input="CI/CD pipeline" direction=LR
```

## Related Commands

- `/jm-adk:architect` — Architecture with C4 diagrams
- `/jm-adk:domain-map` — Domain bounded context map
- `/jm-adk:flows` — Business process flows
