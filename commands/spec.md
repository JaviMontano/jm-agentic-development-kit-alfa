---
description: "Generate functional specification"
user-invocable: true
---

# /jm-adk:spec

## Purpose

Generate a detailed functional specification document covering requirements, user stories, acceptance criteria, and technical constraints. Use this to formally document what the system must do.

## Workflow

1. Consolidate requirements from discovery artifacts, conversations, and documents.
2. Structure functional requirements with user stories and acceptance criteria.
3. Define non-functional requirements, constraints, and assumptions.
4. Generate a specification document with traceability matrix and sign-off section.

## Arguments

- `input` — Requirements source or document path (required)
- `format` — Spec format: `ieee` | `agile` | `lean` (optional, default: agile)
- `detail` — Detail level: `high-level` | `detailed` | `exhaustive` (optional, default: detailed)

## Examples

```bash
/jm-adk:spec input="Customer portal with self-service features"
/jm-adk:spec input=./docs/requirements.md format=agile detail=exhaustive
```

## Related Commands

- `/jm-adk:analyze` — Full analysis pipeline
- `/jm-adk:requirements` — Extract requirements
- `/jm-adk:brief` — Shorter technical brief
