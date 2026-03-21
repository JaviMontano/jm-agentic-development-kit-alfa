---
description: "Full analysis pipeline (MAO-style): requirements → flows → scenarios → feasibility → spec"
user-invocable: true
---

# /jm-adk:analyze

## Purpose

Run a comprehensive analysis pipeline that takes raw requirements through structured discovery phases, producing a complete feasibility-backed specification. Use this before any development to ensure the problem space is fully understood.

## Workflow

1. Extract and structure requirements from user input, documents, or conversation history.
2. Map business processes, data flows, and bounded contexts using domain-driven design.
3. Evaluate implementation scenarios and run a 7-dimension feasibility assessment.
4. Generate a consolidated specification document with traceability matrix and risk summary.

## Arguments

- `input` — Path to requirements document or inline description (required)
- `depth` — Analysis depth: `quick` | `standard` | `deep` (optional, default: standard)
- `output` — Output format: `md` | `pdf` | `json` (optional, default: md)

## Examples

```bash
/jm-adk:analyze input="We need an e-commerce platform for artisan products"
/jm-adk:analyze input=./docs/requirements.md depth=deep
```

## Related Commands

- `/jm-adk:requirements` — Extract requirements only
- `/jm-adk:feasibility` — Run feasibility assessment only
- `/jm-adk:spec` — Generate specification document
