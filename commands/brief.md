---
description: "Generate technical brief (max 3 pages)"
user-invocable: true
---

# /jm-adk:brief

## Purpose

Generate a concise technical brief (maximum 3 pages) summarizing the project scope, approach, and key decisions. Use this for quick stakeholder communication or project kick-off documentation.

## Workflow

1. Synthesize project context from available artifacts (requirements, spec, architecture).
2. Draft executive summary with problem statement, proposed solution, and scope boundaries.
3. Summarize key technical decisions, technology stack, and timeline.
4. Generate a formatted brief document with clear sections and actionable next steps.

## Arguments

- `input` — Project description or artifact path (required)
- `focus` — Brief focus: `executive` | `technical` | `both` (optional, default: both)

## Examples

```bash
/jm-adk:brief input="Microservices migration project"
/jm-adk:brief input=./docs/spec.md focus=executive
```

## Related Commands

- `/jm-adk:pitch` — Full executive pitch with ROI
- `/jm-adk:spec` — Detailed functional specification
- `/jm-adk:docs` — Complete project documentation
